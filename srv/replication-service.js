const cds = require("@sap/cds");
const LOG = cds.log("replication-service");

async function getBusinessPartnerCountFromS4() {
  const API_BUSINESS_PARTNER = await cds.connect.to("API_BUSINESS_PARTNER");
  const { A_BusinessPartner } = API_BUSINESS_PARTNER.entities;
  const s4BusinessPartner = await API_BUSINESS_PARTNER.run(
    SELECT`count(BusinessPartner) as count`.from`A_BusinessPartner`
  );
  return s4BusinessPartner[0].count;
}

async function getBusinessPartnerFromS4(bp) {
  const API_BUSINESS_PARTNER = await cds.connect.to("API_BUSINESS_PARTNER");
  const { A_BusinessPartner } = API_BUSINESS_PARTNER.entities;
  const s4BusinessPartner = await API_BUSINESS_PARTNER.run(
    SELECT.one(A_BusinessPartner).where({
      BusinessPartner: bp,
    })
  );
  LOG.info("received BP from S/4", s4BusinessPartner.BusinessPartnerFullName);
  return s4BusinessPartner;
}
async function getBusinessPartnersFromS4(limit) {
  const API_BUSINESS_PARTNER = await cds.connect.to("API_BUSINESS_PARTNER");
  const { A_BusinessPartner } = API_BUSINESS_PARTNER.entities;
  const s4BusinessPartner = await API_BUSINESS_PARTNER.run(
    SELECT(A_BusinessPartner).limit(limit.rows, limit.offset)
  );
  return s4BusinessPartner;
}
async function upsertBusinessPartner(s4BusinessPartner) {
  const bp = s4BusinessPartner.BusinessPartner;
  const db = await cds.connect.to("db");
  const { BusinessPartner } = db.entities;
  const dbBusinessPartner = await db.run(
    SELECT.one(BusinessPartner).where({
      BusinessPartner: bp,
    })
  );
  if (dbBusinessPartner === null) {
    LOG.info("Create BP ", bp);
    await db.run(INSERT.into(BusinessPartner).entries([s4BusinessPartner]));
  } else {
    LOG.info("Update BP ", bp);
    await db.run(
      UPDATE(BusinessPartner, {
        BusinessPartner: bp,
      }).with(s4BusinessPartner)
    );
  }
}

async function upsertBusinessPartnerFromS4(bp) {
  const s4BusinessPartner = await getBusinessPartnerFromS4(bp);
  await upsertBusinessPartner(s4BusinessPartner);
}

module.exports = cds.service.impl(async function () {
  const db = await cds.connect.to("db");
  const { BusinessPartner } = db.entities;
  /*
  const API_BUSINESS_PARTNER = await cds.connect.to("API_BUSINESS_PARTNER");
  API_BUSINESS_PARTNER.on("BusinessPartner.Changed", async (msg) => {
    const { BusinessPartner: bp } = msg.data;
    LOG.info(
      '--> Event received: BusinessPartner changed (ID="' + bp + '")'
    );
    await upsertBusinessPartnerFromS4(bp);
  });
  */
  const messaging = await cds.connect.to("messaging");
  messaging.on(
    "sap.s4.beh.businesspartner.v1.BusinessPartner.Changed.v1",
    async (msg) => {
      const { BusinessPartner: bp } = msg.data;
      LOG.info('--> Event received: BusinessPartner changed (ID="' + bp + '")');
      await upsertBusinessPartnerFromS4(bp);
    }
  );
  this.on("loadBusinessPartner", async function (req) {
    const blockSize = req.data.BlockSize;
    LOG.info("loadBusinessPartner - blockSize:", blockSize);
    const count = await getBusinessPartnerCountFromS4();
    LOG.info("count:", count);
    for (let top = 0; top < count; top = top + blockSize) {
      const limit = {
        offset: top,
        rows: blockSize,
      };
      const s4BusinessPartners = await getBusinessPartnersFromS4(limit);
      LOG.info("Number of BPs:", s4BusinessPartners.length);
      for (let index = 0; index < s4BusinessPartners.length; index++) {
        const s4BusinessPartner = s4BusinessPartners[index];
        await upsertBusinessPartner(s4BusinessPartner);
      }
    }
  });
  this.on("deleteAllBusinessPartners", async function (req) {
    await db.run(DELETE.from(BusinessPartner));
  });
});
