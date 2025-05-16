exports.apiMappingConfiguration = async function () {
  const db = await cds.connect.to("db");
  const {
    A_BusinessPartner,
    A_Customer,
    A_CustomerSalesArea,
    A_CustomerSalesAreaText,
    A_BusinessPartnerAddress,
  } = db.entities;

  return {
    API_BUSINESS_PARTNER: {
      filter: {
        SalesOrganization: {
          in: [
            "1020",
            "2210",
            "2211",
            "2212",
            "2213",
            "2214",
            "2215",
            "2216",
            "2217",
          ],
        },
      },
      mapping: [
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
        {
          s4entityName: "A_BusinessPartnerAddress",
          localEntity: A_BusinessPartnerAddress,
        },
      ],
    },
  };
};
