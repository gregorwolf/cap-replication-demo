exports.maps4entityToLocal = async function () {
  const db = await cds.connect.to("db");
  const {
    A_BusinessPartner,
    A_Customer,
    A_CustomerSalesArea,
    A_CustomerSalesAreaText,
  } = db.entities;

  return [
    {
      s4entityName: "A_BusinessPartner",
      localEntity: A_BusinessPartner,
      /*
      columns: [
        "BusinessPartner",
        "BusinessPartnerFullName",
        "BusinessPartnerIsBlocked",
        "Customer",
      ],
      */
    },
    {
      s4entityName: "A_Customer",
      localEntity: A_Customer,
    },
    {
      s4entityName: "A_CustomerSalesArea",
      localEntity: A_CustomerSalesArea,
    },
    {
      s4entityName: "A_CustomerSalesAreaText",
      localEntity: A_CustomerSalesAreaText,
    },
  ];
};
