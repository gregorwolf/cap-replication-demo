exports.maps4entityToLocal = async function(){
  const db = await cds.connect.to("db");
  const { BusinessPartner, CustomerSalesAreaText } = db.entities;
  
  return [
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

}


