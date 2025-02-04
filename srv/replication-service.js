const cds = require("@sap/cds");
const LOG = cds.log("replication-service");

// const s4api = await cds.connect.to("API_BUSINESS_PARTNER");

async function getEntityCountFromS4(s4api, s4entityName) {
  if (cds.env.env === "hybrid" || cds.env.production) {
    // works when remote API is connected
    const count = await s4api.get(`/${s4entityName}/$count`);
    return parseInt(count);
  } else {
    // works when remote API is mocked locally
    const s4entity = await s4api.run(
      SELECT`count() as count`.from(s4entityName)
    );
    return s4entity[0].count;
  }
}

async function getEntityFromS4(s4api, bp) {
  const { A_BusinessPartner } = s4api.entities;
  const s4entity = await s4api.run(
    SELECT.one(A_BusinessPartner).where({
      BusinessPartner: bp,
    })
  );
  LOG.info("received BP from S/4", s4entity.BusinessPartnerFullName);
  return s4entity;
}

async function getEntitiesFromS4(s4api, s4entityName, limit, columns) {
  let query = SELECT(`${s4entityName}`).limit(limit.rows, limit.offset);
  if (columns) {
    query = query.columns(columns);
  }
  const s4entity = await s4api.run(query);
  return s4entity;
}

async function upsertEntity(entityName, s4entity) {
  const db = await cds.connect.to("db");
  await db.run(UPSERT(s4entity).into(entityName));
}

async function upsertBusinessPartnerFromS4(bp) {
  const s4entity = await getEntityFromS4(bp);
  await upsertBusinessPartner(s4entity);
}

module.exports = cds.service.impl(async function () {
  const db = await cds.connect.to("db");
  const { BusinessPartner, CustomerSalesAreaText } = db.entities;

  const maps4entityToLocal = [
    {
      s4entityName: "A_BusinessPartner",
      localEntity: BusinessPartner,
      columns: [
        "BusinessPartner",
        "BusinessPartnerFullName",
        "BusinessPartnerIsBlocked",
      ],
    },
    {
      s4entityName: "A_CustomerSalesAreaText",
      localEntity: CustomerSalesAreaText,
    },
  ];

  const messaging = await cds.connect.to("messaging");

  messaging.on(
    "sap.s4.beh.businesspartner.v1.BusinessPartner.Changed.v1",
    async (msg) => {
      const { BusinessPartner: bp } = msg.data;
      LOG.info('--> Event received: BusinessPartner changed (ID="' + bp + '")');
      await upsertBusinessPartnerFromS4(bp);
    }
  );

  async function loadEntitiesFromS4(s4api, blockSize, maxCount) {
    LOG.info("loadEntitiesFromS4 - blockSize:", blockSize);
    LOG.info(s4api);
    // loop through maps4entityToLocal
    for (let index = 0; index < maps4entityToLocal.length; index++) {
      const map = maps4entityToLocal[index];
      const count = await getEntityCountFromS4(s4api, map.s4entityName);
      LOG.info("count:", count);
      for (let top = 0; top < count; top = top + blockSize) {
        if (maxCount && top >= maxCount) {
          break;
        }
        const limit = {
          offset: top,
          rows: blockSize,
        };
        const s4entities = await getEntitiesFromS4(
          s4api,
          map.s4entityName,
          limit,
          map.columns
        );
        LOG.info("Number of Entities:", s4entities.length);
        for (let index = 0; index < s4entities.length; index++) {
          const s4entity = s4entities[index];
          s4entity.source = s4api.name;
          await upsertEntity(map.localEntity, s4entity);
        }
      }
    }
  }

  this.on("loadEntitiesFromS4", async function (req) {
    const s4api = await cds.connect.to("API_BUSINESS_PARTNER_DEV");
    await loadEntitiesFromS4(s4api, req.data.BlockSize, req.data.maxCount);
    /*
    const blockSize = req.data.BlockSize;
    const maxCount = req.data.maxCount;
    LOG.info("loadEntitiesFromS4 - blockSize:", blockSize);
    // loop through maps4entityToLocal
    for (let index = 0; index < maps4entityToLocal.length; index++) {
      const map = maps4entityToLocal[index];
      const count = await getEntityCountFromS4(map.s4entityName);
      LOG.info("count:", count);
      for (let top = 0; top < count; top = top + blockSize) {
        if (maxCount && top >= maxCount) {
          break;
        }
        const limit = {
          offset: top,
          rows: blockSize,
        };
        const s4entities = await getEntitiesFromS4(
          map.s4entityName,
          limit,
          map.columns
        );
        LOG.info("Number of Entities:", s4entities.length);
        for (let index = 0; index < s4entities.length; index++) {
          const s4entity = s4entities[index];
          s4entity.source = "S4HANASandbox";
          await upsertEntity(map.localEntity, s4entity);
        }
      }
    }
    */
  });

  this.on("deleteAllReplicatedEntities", async function (req) {
    for (let index = 0; index < maps4entityToLocal.length; index++) {
      const map = maps4entityToLocal[index];
      LOG.info("delete entries for S/4HANA Entity:", map.s4entityName);
      await db.run(DELETE.from(map.localEntity));
    }
  });
});
