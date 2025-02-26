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
};

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

    const query = SELECT.from(entityMap.localEntity).where({source: sourceDest});

    const SourceItems = await db.run(query);

    const tx = targetApi.tx();

    try {
      const entities = tx.entities[entityMap.s4entityName];
      LOG.info(entities);

      const keys = entities.keys;
      const elements = [];
      for (let element of entities.elements){ // get non-key elements to update
        if (element.key){
          continue;
        }
        elements.push(element);
      }

      for (let Item of SourceItems){

        delete Item.source;

        const filter = {}
        for (let key of keys){
          filter[key.name] = Item[key.name];
        }

        const targetItem = await tx.run(SELECT.one(entities).where(filter));

        if (targetItem){

          const values = {};
          for (let element of elements){    // build values to change
            switch (element.type){
              case "cds.LargeString": 
                values[element.name] = targetItem[element.name] + '\n' + Item[element.name];
                break;
              default:
                cds.error(500, `field type "${element.type}" not implemented. aborting without changes`);
            }
          }

          await tx.run(UPDATE(entities, filter).with(values)); 
        } else {
          await tx.run(INSERT.into(entities).entries([Item])); // insert item without changes
        }
      };    
      tx.commit();
    } catch (error) {
      await tx.rollback(error);
      LOG.info("Transaction rolled back due to error:" , error);
      throw error;
    };

  });


});