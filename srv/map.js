exports.maps4entityToLocal = async function () {
  const db = await cds.connect.to("db");
  const {
    BusinessPartner,
    Customer,
    CustomerSalesArea,
    CustomerSalesAreaText,
  } = db.entities;

  return [
    {
      s4entityName: "A_BusinessPartner",
      localEntity: BusinessPartner,
      columns: [
        "BusinessPartner",
        "BusinessPartnerFullName",
        "BusinessPartnerIsBlocked",
        "Customer",
      ],
    },
    {
      s4entityName: "A_Customer",
      localEntity: Customer,
    },
    {
      s4entityName: "A_CustomerSalesArea",
      localEntity: CustomerSalesArea,
    },
    {
      s4entityName: "A_CustomerSalesAreaText",
      localEntity: CustomerSalesAreaText,
    },
  ];
};
