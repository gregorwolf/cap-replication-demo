using {PRODUCT_0002 as pr} from '../srv/external/PRODUCT_0002';
using {replication.source} from './schema';

namespace replication;


/*  PRODUCT ODATA V4 */

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _ProductPlant[Plant = $user.Plant]'
}])
entity Product : pr.Product, source {
    _ProductChangeMaster      : Composition of many replication.ProductChangeMaster
                                    on  _ProductChangeMaster.Product = $self.Product
                                    and _ProductChangeMaster.source  = $self.source;
    _ProductSalesDelivery     : Composition of many replication.ProductSalesDelivery
                                    on  _ProductSalesDelivery.Product = $self.Product
                                    and _ProductSalesDelivery.source  = $self.source;
    _ProductDescription       : Composition of many replication.ProductDescription
                                    on  _ProductDescription.Product = $self.Product
                                    and _ProductDescription.source  = $self.source;

    _ProductEWMWarehouse      : Composition of many replication.ProductEWMWarehouse
                                    on  _ProductEWMWarehouse.Product = $self.Product
                                    and _ProductEWMWarehouse.source  = $self.source;

    _ProductPlant             : Composition of many replication.ProductPlant
                                    on  _ProductPlant.Product = $self.Product
                                    and _ProductPlant.source  = $self.source;

    _ProductProcurement       : Composition of one replication.ProductProcurement
                                    on  _ProductProcurement.Product = $self.Product
                                    and _ProductProcurement.source  = $self.source;

    _ProductQualityManagement : Composition of one replication.ProductQualityManagement
                                    on  _ProductQualityManagement.Product = $self.Product
                                    and _ProductQualityManagement.source  = $self.source;

    _ProductSales             : Composition of one replication.ProductSales
                                    on  _ProductSales.Product = $self.Product
                                    and _ProductSales.source  = $self.source;

    _ProductStorage           : Composition of one replication.ProductStorage
                                    on  _ProductStorage.Product = $self.Product
                                    and _ProductStorage.source  = $self.source;

    _ProductUnitOfMeasure     : Composition of many replication.ProductUnitOfMeasure
                                    on  _ProductUnitOfMeasure.Product = $self.Product
                                    and _ProductUnitOfMeasure.source  = $self.source;

    _ProductValuation         : Composition of many replication.ProductValuation
                                    on  _ProductValuation.Product = $self.Product
                                    and _ProductValuation.source  = $self.source;
    _ProductBasicText         : Association to many replication.ProductBasicText
                                    on  _ProductBasicText.Product = $self.Product
                                    and _ProductBasicText.source  = $self.source;
    _ProductInspectionText    : Association to many replication.ProductInspectionText
                                    on  _ProductInspectionText.Product = $self.Product
                                    and _ProductInspectionText.source  = $self.source;
    _ProductInternalComment   : Association to many replication.ProductInternalComment
                                    on  _ProductInternalComment.Product = $self.Product
                                    and _ProductInternalComment.source  = $self.source;
    _ProductPurchaseOrderText : Association to many replication.ProductPurchaseOrderText
                                    on  _ProductPurchaseOrderText.Product = $self.Product
                                    and _ProductPurchaseOrderText.source  = $self.source;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductChangeMaster : pr.ProductChangeMaster, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductDescription : pr.ProductDescription, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductBasicText : pr.ProductBasicText, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductInspectionText : pr.ProductInspectionText, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

}

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductInternalComment : pr.ProductInternalComment, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductPurchaseOrderText : pr.ProductPurchaseOrderText, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductPlantMRPText : pr.ProductPlantMRPText, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductSalesDeliveryText : pr.ProductSalesDeliveryText, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductEWMWarehouse : pr.ProductEWMWarehouse, source {

    _Product               : Association to one replication.Product
                                 on  _Product.Product = $self.Product
                                 and _Product.source  = $self.source;


    _ProductEWMStorageType : Association to many replication.ProductEWMStorageType
                                 on  _ProductEWMStorageType.Product                = $self.Product
                                 and _ProductEWMStorageType.EWMWarehouse           = $self.EWMWarehouse
                                 and _ProductEWMStorageType.EntitledToDisposeParty = $self.EntitledToDisposeParty;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductEWMStorageType : pr.ProductEWMStorageType, source {

    _Product             : Association to one replication.Product
                               on  _Product.Product = $self.Product
                               and _Product.source  = $self.source;

    _ProductEWMWarehouse : Association to replication.ProductEWMWarehouse
                               on  _ProductEWMWarehouse.EWMWarehouse           = $self.EWMWarehouse
                               and _ProductEWMWarehouse.EntitledToDisposeParty = $self.EntitledToDisposeParty
                               and _ProductEWMWarehouse.Product                = $self.Product;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlant : pr.ProductPlant, source {

    _Product                       : Association to one replication.Product
                                         on  _Product.Product = $self.Product
                                         and _Product.source  = $self.source;

    _ProductPlantCosting           : Association to many replication.ProductPlantCosting
                                         on  _ProductPlantCosting.Product = $self.Product
                                         and _ProductPlantCosting.Plant   = $self.Plant;

    _ProductPlantForecast          : Association to many replication.ProductPlantForecast
                                         on  _ProductPlantForecast.Product = $self.Product
                                         and _ProductPlantForecast.Plant   = $self.Plant;

    _ProductPlantInspTypeSetting   : Association to many replication.ProductPlantInspTypeSetting
                                         on  _ProductPlantInspTypeSetting.Product = $self.Product
                                         and _ProductPlantInspTypeSetting.Plant   = $self.Plant;

    _ProdPlantInternationalTrade   : Association to many replication.ProductPlantInternationalTrade
                                         on  _ProdPlantInternationalTrade.Product = $self.Product
                                         and _ProdPlantInternationalTrade.Plant   = $self.Plant;

    _ProductPlantMRP               : Association to many replication.ProductPlantMRP
                                         on  _ProductPlantMRP.Product = $self.Product
                                         and _ProductPlantMRP.Plant   = $self.Plant;

    _ProductPlantPlanning          : Association to many replication.ProductPlantPlanning
                                         on  _ProductPlantPlanning.Product = $self.Product
                                         and _ProductPlantPlanning.Plant   = $self.Plant;

    _ProductPlantProcurement       : Association to many replication.ProductPlantProcurement
                                         on  _ProductPlantProcurement.Product = $self.Product
                                         and _ProductPlantProcurement.Plant   = $self.Plant;

    _ProductPlantPurchaseTax       : Association to many replication.ProductPlantPurchaseTax
                                         on  _ProductPlantPurchaseTax.Product = $self.Product
                                         and _ProductPlantPurchaseTax.Plant   = $self.Plant;

    _ProductPlantQualityManagement : Association to many replication.ProductPlantQualityManagement
                                         on  _ProductPlantQualityManagement.Product = $self.Product
                                         and _ProductPlantQualityManagement.Plant   = $self.Plant;

    _ProductPlantSales             : Association to many replication.ProductPlantSales
                                         on  _ProductPlantSales.Product = $self.Product
                                         and _ProductPlantSales.Plant   = $self.Plant;

    _ProductPlantStorage           : Association to many replication.ProductPlantStorage
                                         on  _ProductPlantStorage.Product = $self.Product
                                         and _ProductPlantStorage.Plant   = $self.Plant;

    _ProductPlantStorageLocation   : Association to many replication.ProductPlantStorageLocation
                                         on  _ProductPlantStorageLocation.Product = $self.Product
                                         and _ProductPlantStorageLocation.Plant   = $self.Plant;

    _ProductPlantSupplyPlanning    : Association to many replication.ProductPlantSupplyPlanning
                                         on  _ProductPlantSupplyPlanning.Product = $self.Product
                                         and _ProductPlantSupplyPlanning.Plant   = $self.Plant;

    _ProductPlantWorkScheduling    : Association to many replication.ProductPlantWorkScheduling
                                         on  _ProductPlantWorkScheduling.Product = $self.Product
                                         and _ProductPlantWorkScheduling.Plant   = $self.Plant;

    _ProdPlntMRPText               : Association to many replication.ProductPlantMRPText
                                         on  _ProdPlntMRPText.Product = $self.Product
                                         and _ProdPlntMRPText.Plant   = $self.Plant
                                         and _ProdPlntMRPText.source  = $self.source;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantCosting : pr.ProductPlantCosting, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantForecast : pr.ProductPlantForecast, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantInspTypeSetting : pr.ProductPlantInspTypeSetting, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantInternationalTrade : pr.ProductPlantInternationalTrade, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantMRP : pr.ProductPlantMRP, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantPlanning : pr.ProductPlantPlanning, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantProcurement : pr.ProductPlantProcurement, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantPurchaseTax : pr.ProductPlantPurchaseTax, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantQualityManagement : pr.ProductPlantQualityManagement, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant =  Plant'
}])
entity ProductPlantSales : pr.ProductPlantSales, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantStorage : pr.ProductPlantStorage, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantStorageLocation : pr.ProductPlantStorageLocation, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantSupplyPlanning : pr.ProductPlantSupplyPlanning, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.Plant = Plant'
}])
entity ProductPlantWorkScheduling : pr.ProductPlantWorkScheduling, source {

    _Product      : Association to one replication.Product
                        on  _Product.Product = $self.Product
                        and _Product.source  = $self.source;

    _ProductPlant : Association to pr.ProductPlant
                        on  _ProductPlant.Product = $self.Product
                        and _ProductPlant.Plant   = $self.Plant;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductProcurement : pr.ProductProcurement, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductQualityManagement : pr.ProductQualityManagement, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductSales : pr.ProductSales, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.SalesOrganization = ProductSalesOrg'
}])
entity ProductSalesDelivery : pr.ProductSalesDelivery, source {

    _Product                   : Association to one replication.Product
                                     on  _Product.Product = $self.Product
                                     and _Product.source  = $self.source;

    _ProdSalesDeliverySalesTax : Composition of many replication.ProdSalesDeliverySalesTax
                                     on  _ProdSalesDeliverySalesTax.Product                 = $self.Product
                                     and _ProdSalesDeliverySalesTax.ProductSalesOrg         = $self.ProductSalesOrg
                                     and _ProdSalesDeliverySalesTax.ProductDistributionChnl = $self.ProductDistributionChnl;
    _ProductSalesDeliveryText  : Association to many replication.ProductSalesDeliveryText
                                     on  _ProductSalesDeliveryText.Product                 = $self.Product
                                     and _ProductSalesDeliveryText.ProductSalesOrg         = $self.ProductSalesOrg
                                     and _ProductSalesDeliveryText.ProductDistributionChnl = $self.ProductDistributionChnl;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.SalesOrganization = ProductSalesOrg'
}])
entity ProdSalesDeliverySalesTax : pr.ProdSalesDeliverySalesTax, source {

    _ProductSalesDelivery : Association to replication.ProductSalesDelivery
                                on  _ProductSalesDelivery.Product                 = $self.Product
                                and _ProductSalesDelivery.ProductSalesOrg         = $self.ProductSalesOrg
                                and _ProductSalesDelivery.ProductDistributionChnl = $self.ProductDistributionChnl;

    _Product              : Association to one replication.Product
                                on  _Product.Product = $self.Product
                                and _Product.source  = $self.source;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductStorage : pr.ProductStorage, source {

    _Product : Association to one replication.Product
                   on  _Product.Product = $self.Product
                   and _Product.source  = $self.source;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductUnitOfMeasure : pr.ProductUnitOfMeasure, source {

    _Product                 : Association to one replication.Product
                                   on  _Product.Product = $self.Product
                                   and _Product.source  = $self.source;

    _ProductUnitOfMeasureEAN : Association to many replication.ProductUnitOfMeasureEAN
                                   on  _ProductUnitOfMeasureEAN.Product         = $self.Product
                                   and _ProductUnitOfMeasureEAN.AlternativeUnit = $self.AlternativeUnit;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductUnitOfMeasureEAN : pr.ProductUnitOfMeasureEAN, source {

    _ProductUnitOfMeasure : Association to replication.ProductUnitOfMeasure
                                on  _ProductUnitOfMeasure.Product         = $self.Product
                                and _ProductUnitOfMeasure.AlternativeUnit = $self.AlternativeUnit;

    _Product              : Association to one replication.Product
                                on  _Product.Product = $self.Product
                                and _Product.source  = $self.source;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductValuation : pr.ProductValuation, source {

    _Product                       : Association to one replication.Product
                                         on  _Product.Product = $self.Product
                                         and _Product.source  = $self.source;

    _ProductValuationAccounting    : Association to many replication.ProductValuationAccounting
                                         on  _ProductValuationAccounting.Product       = $self.Product
                                         and _ProductValuationAccounting.ValuationType = $self.ValuationType
                                         and _ProductValuationAccounting.ValuationArea = $self.ValuationArea;

    _ProductValuationCosting       : Association to many replication.ProductValuationCosting
                                         on  _ProductValuationCosting.Product       = $self.Product
                                         and _ProductValuationCosting.ValuationType = $self.ValuationType
                                         and _ProductValuationCosting.ValuationArea = $self.ValuationArea;

    _ProductValuationLedgerAccount : Association to many replication.ProductValuationLedgerAccount
                                         on  _ProductValuationLedgerAccount.Product       = $self.Product
                                         and _ProductValuationLedgerAccount.ValuationType = $self.ValuationType
                                         and _ProductValuationLedgerAccount.ValuationArea = $self.ValuationArea;


    _ProductValuationLedgerPrices  : Association to many replication.ProductValuationLedgerPrices
                                         on  _ProductValuationLedgerPrices.Product       = $self.Product
                                         and _ProductValuationLedgerPrices.ValuationType = $self.ValuationType
                                         and _ProductValuationLedgerPrices.ValuationArea = $self.ValuationArea;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductValuationAccounting : pr.ProductValuationAccounting, source {

    _Product          : Association to one replication.Product
                            on  _Product.Product = $self.Product
                            and _Product.source  = $self.source;
    _ProductValuation : Association to replication.ProductValuation
                            on  _ProductValuation.Product       = $self.Product
                            and _ProductValuation.ValuationType = $self.ValuationType
                            and _ProductValuation.ValuationArea = $self.ValuationArea;

};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductValuationCosting : pr.ProductValuationCosting, source {

    _ProductValuation : Association to replication.ProductValuation
                            on  _ProductValuation.Product       = $self.Product
                            and _ProductValuation.ValuationType = $self.ValuationType
                            and _ProductValuation.ValuationArea = $self.ValuationArea;

    _Product          : Association to one replication.Product
                            on  _Product.Product = $self.Product
                            and _Product.source  = $self.source;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductValuationLedgerAccount : pr.ProductValuationLedgerAccount, source {

    _ProductValuation : Association to replication.ProductValuation
                            on  _ProductValuation.Product       = $self.Product
                            and _ProductValuation.ValuationType = $self.ValuationType
                            and _ProductValuation.ValuationArea = $self.ValuationArea;

    _Product          : Association to one replication.Product
                            on  _Product.Product = $self.Product
                            and _Product.source  = $self.source;
};


@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: 'exists _Product._ProductSalesDelivery[ProductSalesOrg = $user.SalesOrganization] or exists _Product._ProductPlant[Plant = $user.Plant]'
}])
entity ProductValuationLedgerPrices : pr.ProductValuationLedgerPrices, source {

    _ProductValuation : Association to replication.ProductValuation
                            on  _ProductValuation.Product       = $self.Product
                            and _ProductValuation.ValuationType = $self.ValuationType
                            and _ProductValuation.ValuationArea = $self.ValuationArea;

    _Product          : Association to one replication.Product
                            on  _Product.Product = $self.Product
                            and _Product.source  = $self.source;
};
