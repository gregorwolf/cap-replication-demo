exports.apiMappingConfiguration = async function () {
  const db = await cds.connect.to("db");
  const {
    A_BusinessPartner,
    A_Customer,
    A_CustomerSalesArea,
    A_CustomerSalesAreaText,
    A_BusinessPartnerAddress,

    /*  PRODUCT ODATA V4 */
    Product,
    ProductChangeMaster,
    ProductBasicText,
    ProductDescription,
    ProductEWMStorageType,
    ProductEWMWarehouse,
    ProductPlant,
    ProductPlantCosting,
    ProductPlantForecast,
    ProductPlantInspTypeSetting,
    ProductPlantInternationalTrade,
    ProductPlantMRP,
    ProductPlantPlanning,
    ProductPlantProcurement,
    ProductPlantPurchaseTax,
    ProductPlantQualityManagement,
    ProductPlantSales,
    ProductPlantStorage,
    ProductPlantStorageLocation,
    ProductPlantSupplyPlanning,
    ProductPlantWorkScheduling,
    ProductProcurement,
    ProductQualityManagement,
    ProductSales,
    ProductSalesDelivery,
    ProductStorage,
    ProductUnitOfMeasure,
    ProductUnitOfMeasureEAN,
    ProductValuation,
    ProductValuationAccounting,
    ProductValuationCosting,
    ProductValuationLedgerAccount,
    ProductValuationLedgerPrices,
    ProdSalesDeliverySalesTax,
  } = db.entities;
  const SalesOrganization = {
    in: ["1010"],
  };
  const ProductSalesOrg = SalesOrganization;

  const PlantArray = ["1010"];

  const Plant = {
    in: PlantArray,
  };

  return {
    API_BUSINESS_PARTNER: {
      filter: {
        SalesOrganization: SalesOrganization,
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
    PRODUCT_0002: {
      filter: {
        SalesOrganization,
        ProductSalesOrg,
        Plant,
        // Product: ProductFilter,
      },
      mapping: [
        /*  PRODUCT ODATA V4 */

        {
          s4entityName: "Product",
          localEntity: Product,
        },
        {
          s4entityName: "ProductBasicText",
          localEntity: ProductBasicText,
        },
        {
          s4entityName: "ProductDescription",
          localEntity: ProductDescription,
        },
        /*
        {
          s4entityName: "ProductChangeMaster",
          localEntity: ProductChangeMaster,
        },
        {
          s4entityName: "ProductEWMStorageType",
          localEntity: ProductEWMStorageType,
        },
        {
          s4entityName: "ProductEWMWarehouse",
          localEntity: ProductEWMWarehouse,
        },
        {
          s4entityName: "ProductPlant",
          localEntity: ProductPlant,
        },
        {
          s4entityName: "ProductPlantCosting",
          localEntity: ProductPlantCosting,
        },
        {
          s4entityName: "ProductPlantForecast",
          localEntity: ProductPlantForecast,
        },
        {
          s4entityName: "ProductPlantInspTypeSetting",
          localEntity: ProductPlantInspTypeSetting,
        },
        {
          s4entityName: "ProductPlantInternationalTrade",
          localEntity: ProductPlantInternationalTrade,
        },
        {
          s4entityName: "ProductPlantMRP",
          localEntity: ProductPlantMRP,
        },
        {
          s4entityName: "ProductPlantPlanning",
          localEntity: ProductPlantPlanning,
        },
        {
          s4entityName: "ProductPlantProcurement",
          localEntity: ProductPlantProcurement,
        },
        {
          s4entityName: "ProductPlantPurchaseTax",
          localEntity: ProductPlantPurchaseTax,
        },
        {
          s4entityName: "ProductPlantQualityManagement",
          localEntity: ProductPlantQualityManagement,
        },
        {
          s4entityName: "ProductPlantSales",
          localEntity: ProductPlantSales,
        },
        {
          s4entityName: "ProductPlantStorage",
          localEntity: ProductPlantStorage,
        },
        {
          s4entityName: "ProductPlantStorageLocation",
          localEntity: ProductPlantStorageLocation,
        },
        {
          s4entityName: "ProductPlantSupplyPlanning",
          localEntity: ProductPlantSupplyPlanning,
        },
        {
          s4entityName: "ProductPlantWorkScheduling",
          localEntity: ProductPlantWorkScheduling,
        },
        {
          s4entityName: "ProductProcurement",
          localEntity: ProductProcurement,
        },
        {
          s4entityName: "ProductQualityManagement",
          localEntity: ProductQualityManagement,
        },
        {
          s4entityName: "ProductSales",
          localEntity: ProductSales,
        },
        {
          s4entityName: "ProductSalesDelivery",
          localEntity: ProductSalesDelivery,
        },
        {
          s4entityName: "ProductStorage",
          localEntity: ProductStorage,
        },
        {
          s4entityName: "ProductUnitOfMeasure",
          localEntity: ProductUnitOfMeasure,
        },
        {
          s4entityName: "ProductUnitOfMeasureEAN",
          localEntity: ProductUnitOfMeasureEAN,
        },
        {
          s4entityName: "ProductValuation",
          localEntity: ProductValuation,
        },
        {
          s4entityName: "ProductValuationAccounting",
          localEntity: ProductValuationAccounting,
        },
        {
          s4entityName: "ProductValuationCosting",
          localEntity: ProductValuationCosting,
        },
        {
          s4entityName: "ProductValuationLedgerAccount",
          localEntity: ProductValuationLedgerAccount,
        },
        {
          s4entityName: "ProductValuationLedgerPrices",
          localEntity: ProductValuationLedgerPrices,
        },
        {
          s4entityName: "ProdSalesDeliverySalesTax",
          localEntity: ProdSalesDeliverySalesTax,
        },
        */
      ],
    },
  };
};
