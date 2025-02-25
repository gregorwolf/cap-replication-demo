const cds = require("@sap/cds");
const LOG = cds.log("upsert-service");

module.exports = cds.service.impl(async function () {

  this.on("entitiesInS4", async function (req) {
    LOG.info("entitiesInS4 - Source:", req.data.source, "; Target:", req.data.target, "; Entity:", req.data.entity);
  });


});