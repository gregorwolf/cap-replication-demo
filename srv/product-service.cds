using {replication} from '../db/schema-product';

@(requires: 'authenticated-user')
@(path: '/sap/opu/odata4/sap/api_product/srvd_a2x/sap/product/0002/')
service PRService {


    /*  PRODUCT ODATA V4 */
    entity Product                        as projection on replication.Product;
    entity ProductChangeMaster            as projection on replication.ProductChangeMaster;
    entity ProductDescription             as projection on replication.ProductDescription;
    entity ProductBasicText               as projection on replication.ProductBasicText;
    entity ProductInspectionText          as projection on replication.ProductInspectionText;
    entity ProductInternalComment         as projection on replication.ProductInternalComment;
    entity ProductPurchaseOrderText       as projection on replication.ProductPurchaseOrderText;
    entity ProductEWMWarehouse            as projection on replication.ProductEWMWarehouse;
    entity ProductEWMStorageType          as projection on replication.ProductEWMStorageType;
    entity ProductPlant                   as projection on replication.ProductPlant;
    entity ProductPlantCosting            as projection on replication.ProductPlantCosting;
    entity ProductPlantForecast           as projection on replication.ProductPlantForecast;
    entity ProductPlantInspTypeSetting    as projection on replication.ProductPlantInspTypeSetting;
    entity ProductPlantInternationalTrade as projection on replication.ProductPlantInternationalTrade;
    entity ProductPlantMRP                as projection on replication.ProductPlantMRP;
    entity ProductPlantPlanning           as projection on replication.ProductPlantPlanning;
    entity ProductPlantProcurement        as projection on replication.ProductPlantProcurement;
    entity ProductPlantPurchaseTax        as projection on replication.ProductPlantPurchaseTax;
    entity ProductPlantQualityManagement  as projection on replication.ProductPlantQualityManagement;
    entity ProductPlantSales              as projection on replication.ProductPlantSales;
    entity ProductPlantStorage            as projection on replication.ProductPlantStorage;
    entity ProductPlantStorageLocation    as projection on replication.ProductPlantStorageLocation;
    entity ProductPlantSupplyPlanning     as projection on replication.ProductPlantSupplyPlanning;
    entity ProductPlantWorkScheduling     as projection on replication.ProductPlantWorkScheduling;
    entity ProductProcurement             as projection on replication.ProductProcurement;
    entity ProductQualityManagement       as projection on replication.ProductQualityManagement;
    entity ProductSales                   as projection on replication.ProductSales;
    entity ProductSalesDelivery           as projection on replication.ProductSalesDelivery;
    entity ProdSalesDeliverySalesTax      as projection on replication.ProdSalesDeliverySalesTax;
    entity ProductStorage                 as projection on replication.ProductStorage;
    entity ProductUnitOfMeasure           as projection on replication.ProductUnitOfMeasure;
    entity ProductUnitOfMeasureEAN        as projection on replication.ProductUnitOfMeasureEAN;
    entity ProductValuation               as projection on replication.ProductValuation;
    entity ProductValuationAccounting     as projection on replication.ProductValuationAccounting;
    entity ProductValuationCosting        as projection on replication.ProductValuationCosting;
    entity ProductValuationLedgerAccount  as projection on replication.ProductValuationLedgerAccount;
    entity ProductValuationLedgerPrices   as projection on replication.ProductValuationLedgerPrices;

}
