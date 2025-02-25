const cds = require("@sap/cds");
const { Logger } = require("@sap/cds/lib/log/cds-log.js");
const { UPSERT, INSERT, SELECT } = require("@sap/cds/lib/ql/cds-ql.js");
const LOG = cds.log("upsert-service");

function connectToBusinessPartnerDest(destination){
  return cds.connect.to("API_BUSINESS_PARTNER", {
      credentials: {
        destination,
        path: "/sap/opu/odata/sap/API_BUSINESS_PARTNER"
      },
    }
  );
}

module.exports = cds.service.impl(async function () {
  const db = await cds.connect.to("db");
  const maps4entityToLocal = await require("./map.js").maps4entityToLocal();

  function getMapBys4entity(s4entityName){
    for (let index = 0; index < maps4entityToLocal.length; index++) {
      const map = maps4entityToLocal[index];
      if (map.s4entityName == s4entityName){
        return map;
      }
    }
    return undefined;
  };

  this.on("entitiesInS4", async function (req) {
    const targetDest = req.data.target;
    const sourceDest = req.data.source;
    LOG.info("entitiesInS4 - Source:", req.data.source, "; Target:", req.data.target, "; Entity:", req.data.entity);
    const entityMap = getMapBys4entity(req.data.entity);
    LOG.info("Translated to local Entity: ", entityMap.localEntity);

    const sourceApi = await connectToBusinessPartnerDest(sourceDest); // connect first to see if sources exist
    const targetApi = await connectToBusinessPartnerDest(targetDest);

    if (entityMap.s4entityName != "A_CustomerSalesAreaText") {
      cds.error(500, "entity type not implemented");
    }

    // LOG.info("Available Items:", await db.run('SELECT * FROM ' + entityMap.localEntity));

    // const query = `              // group query only usefull with UPSERT
    //   SELECT Customer,
    //     SalesOrganization,
    //     DistributionChannel,
    //     Division,
    //     Language,
    //     LongTextID,
    //     GROUP_CONCAT(LongText, '\n') AS LongText
    //   FROM ` + entityMap.localEntity + `
    //   WHERE source IN ('` + targetDest + `', '` + sourceDest + `') 
    //   GROUP BY Customer,
    //     SalesOrganization,
    //     DistributionChannel,
    //     Division,
    //     Language,
    //     LongTextID
    // `;

    const query = SELECT.from(entityMap.localEntity).where({source: sourceDest});

    const SourceItems = await db.run(query);

    for (let Item of SourceItems){

      const entities = targetApi.entities[entityMap.s4entityName];

      const targetItem = await targetApi.run(SELECT.one(entities).where({         // TODO: more flexible for other entity types
        Customer: Item.Customer,
        SalesOrganization: Item.SalesOrganization,
        DistributionChannel: Item.DistributionChannel,
        Division: Item.Division,
        Language: Item.Language,
        LongTextID: Item.LongTextID,
      }));

      if (targetItem){
        targetItem.LongText = targetItem.LongText + '\n' + Item.LongText;

        LOG.info(entities);

        await targetApi.run(UPDATE(entities, {                                    // TODO: more flexible for other entity types
          Customer: Item.Customer,
          SalesOrganization: Item.SalesOrganization,
          DistributionChannel: Item.DistributionChannel,
          Division: Item.Division,
          Language: Item.Language,
          LongTextID: Item.LongTextID,
        }).with({LongText: targetItem.LongText}));
      } else {
        await targetApi.run(INSERT.into(entities).entries([Item]));
      }


      // await targetApi.run(UPSERT.into(entities).entries({    // UPSERT funktioniert nicht?
      //     Customer: Item.Customer,
      //     SalesOrganization: Item.SalesOrganization,
      //     DistributionChannel: Item.DistributionChannel,
      //     Division: Item.Division,
      //     Language: Item.Language,
      //     LongTextID: Item.LongTextID,
      //     LongText: Item.LongText
      // }));
    };

  });


});