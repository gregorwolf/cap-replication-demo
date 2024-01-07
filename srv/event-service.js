const cds = require("@sap/cds");
const LOG = cds.log("event-service");

module.exports = cds.service.impl(async function () {
  const messaging = await cds.connect.to("messaging");
  this.on("bpChanged", async function (req) {
    const eventName =
      "sap.s4.beh.businesspartner.v1.BusinessPartner.Changed.v1";
    const eventPayload = {
      BusinessPartner: req.data.BusinessPartner,
    };
    LOG.info("< emitting:", eventName, eventPayload);
    messaging.emit(eventName, eventPayload);
  });
});
