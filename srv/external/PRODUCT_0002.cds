/* checksum : afed6f5bd9fbeed9e9e7e5da65e79533 */
@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Purchase Order - Text'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.FilterRestrictions.Filterable                      : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [{
  Property          : ProductLongText,
  AllowedExpressions: 'SearchExpression'
}]
@Capabilities.SortRestrictions.NonSortableProperties             : ['ProductLongText']
@Capabilities.InsertRestrictions.RequiredProperties              : ['Language']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'TextObjectType',
  'Language'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPurchaseOrderText {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Material'
      @Common.QuickInfo       : 'Material Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                        : String(18) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Text ID'
      @Common.Heading         : 'ID'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TDID'
  key TextObjectType                 : String(4) not null;

      @Core.Immutable         : true
      @Common.Label           : 'Language Key'
      @Common.Heading         : 'Language'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SPRAS'
  key Language                       : String(2) not null;

      @Common.Label: 'Text Content'
      ProductLongText                : String not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Creation timestamp of Product Long texts'
      ProdLongTxtCreationDateTime    : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Created By'
      @Common.QuickInfo       : 'Name of Person Responsible for Creating the Object'
      CreatedByUser                  : String(12) not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Last Change timestamp of Product Long texts'
      ProdLongTxtLastChangedDateTime : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Changed By'
      @Common.QuickInfo       : 'Name of Person Who Changed Object'
      LastChangedByUser              : String(12) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
};

@cds.external: true
type PRODUCT_0002.SAP__Message {
  code              : String not null;
  message           : String not null;
  target            : String;
  additionalTargets : many String not null;
  transition        : Boolean not null;

  @odata.Type: 'Edm.Byte'
  numericSeverity   : Integer not null;
  longtextUrl       : String;
};

@cds.external                                       : true
@CodeList.UnitsOfMeasure.Url                        : '../../../../default/iwbep/common/0001/$metadata'
@CodeList.UnitsOfMeasure.CollectionPath             : 'UnitsOfMeasure'
@CodeList.CurrencyCodes.Url                         : '../../../../default/iwbep/common/0001/$metadata'
@CodeList.CurrencyCodes.CollectionPath              : 'Currencies'
@Common.ApplyMultiUnitBehaviorForSortingAndFiltering: true
@Capabilities.FilterFunctions                       : [
  'eq',
  'ne',
  'gt',
  'ge',
  'lt',
  'le',
  'and',
  'or',
  'contains',
  'startswith',
  'endswith',
  'any',
  'all'
]
@Capabilities.SupportedFormats                      : [
  'application/json',
  'application/pdf'
]
@PDF.Features.DocumentDescriptionReference          : '../../../../default/iwbep/common/0001/$metadata'
@PDF.Features.DocumentDescriptionCollection         : 'MyDocumentDescriptions'
@PDF.Features.ArchiveFormat                         : true
@PDF.Features.Border                                : true
@PDF.Features.CoverPage                             : true
@PDF.Features.FitToPage                             : true
@PDF.Features.FontName                              : true
@PDF.Features.FontSize                              : true
@PDF.Features.HeaderFooter                          : true
@PDF.Features.IANATimezoneFormat                    : true
@PDF.Features.Margin                                : true
@PDF.Features.Padding                               : true
@PDF.Features.ResultSizeDefault                     : 20000
@PDF.Features.ResultSizeMaximum                     : 20000
@PDF.Features.Signature                             : true
@PDF.Features.TextDirectionLayout                   : true
@PDF.Features.Treeview                              : true
@PDF.Features.UploadToFileShare                     : true
@Capabilities.KeyAsSegmentSupported                 : true
@Capabilities.AsynchronousRequestsSupported         : true
service PRODUCT_0002 {};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Sales Delivery Sales Tax'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'Country',
  'ProductSalesTaxCategory'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductSalesDelivery'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProdSalesDeliverySalesTax {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                  : String(18) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Departure Ctry/Reg.'
      @Common.Heading         : 'DeCR'
      @Common.QuickInfo       : 'Departure Country/Region (from which the goods are sent)'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ALAND'
  key Country                  : String(3) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Tax Condition Type'
      @Common.Heading         : 'TxCT'
      @Common.QuickInfo       : 'Condition type for sales tax, VAT, or other tax types'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TATYP'
  key ProductSalesTaxCategory  : String(4) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Sales Organization'
      @Common.Heading         : 'SOrg.'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VKORG'
  key ProductSalesOrg          : String(4) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Distribution Channel'
      @Common.Heading         : 'DChl'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VTWEG'
  key ProductDistributionChnl  : String(2) not null;
      ProductTaxClassification : String(1) not null;
      SAP__Messages            : many PRODUCT_0002.SAP__Message not null;
      _Product                 : Association to one PRODUCT_0002.Product {};
      _ProductSalesDelivery    : Association to one PRODUCT_0002.ProductSalesDelivery {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product'
@Common.Messages                                                 : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties        : [
  {
    NavigationProperty: _ProductBasicText,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductChangeMaster,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductDescription,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductEWMWarehouse,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductInspectionText,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductInternalComment,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlant,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductProcurement,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPurchaseOrderText,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductQualityManagement,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductSales,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductSalesDelivery,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductStorage,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductUnitOfMeasure,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductValuation,
    InsertRestrictions: {Insertable: true}
  }
]
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['Product']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_ProductBasicText',
  '_ProductChangeMaster',
  '_ProductDescription',
  '_ProductEWMWarehouse',
  '_ProductInspectionText',
  '_ProductInternalComment',
  '_ProductPlant',
  '_ProductProcurement',
  '_ProductPurchaseOrderText',
  '_ProductQualityManagement',
  '_ProductSales',
  '_ProductSalesDelivery',
  '_ProductStorage',
  '_ProductUnitOfMeasure',
  '_ProductValuation'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : GrossWeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : WeightUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : WeightISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : NetWeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : VolumeUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : VolumeISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductVolume,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : QuarantinePeriod,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : TimeUnitForQuarantinePeriod,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : QuarantinePeriodISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumPackagingLength,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumPackagingWidth,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumPackagingHeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : UnitForMaxPackagingDimensions,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaxPackggDimensionISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnitSpecificProductLength,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnitSpecificProductWidth,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnitSpecificProductHeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductMeasurementUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductMeasurementISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.Product {
      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Type'
      @Common.Heading                   : 'PTyp'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTTYPE'
      ProductType                    : String(4) not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Created On'
      @Common.Heading                   : 'Created'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ERSDA'
      CreationDate                   : Date;

      @Core.Computed                    : true
      @Common.Label                     : 'Created At Time'
      @Common.QuickInfo                 : 'Time of Creation'
      CreationTime                   : Time not null;

      @odata.Precision                  : 7
      @odata.Type                       : 'Edm.DateTimeOffset'
      @Common.Label                     : 'Created On'
      @Common.QuickInfo                 : 'Product Created On'
      CreationDateTime               : Timestamp;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Created By'
      @Common.QuickInfo                 : 'Name of Person Responsible for Creating the Object'
      CreatedByUser                  : String(12) not null;

      @Core.Computed                    : true
      @Common.Label                     : 'Last Change'
      @Common.Heading                   : 'Last Chg'
      @Common.QuickInfo                 : 'Date of Last Change'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LAEDA'
      LastChangeDate                 : Date;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Changed By'
      @Common.QuickInfo                 : 'Name of Person Who Changed Object'
      LastChangedByUser              : String(12) not null;

      @Common.Label                     : 'Marked for Deletion'
      @Common.Heading                   : 'D'
      @Common.QuickInfo                 : 'Deletion Indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ISMARKEDFORDELETION'
      IsMarkedForDeletion            : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'ProductProfileCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'CrossPlantProdStatus'
      @Common.Heading                   : 'PS'
      @Common.QuickInfo                 : 'Cross-Plant Product Status'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CROSSPLANTSTATUS'
      CrossPlantStatus               : String(2) not null;

      @Common.Label                     : 'Valid from'
      @Common.QuickInfo                 : 'Date from which the cross-plant material status is valid'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MSTDE'
      CrossPlantStatusValidityDate   : Date;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Old Product Number'
      @Common.Heading                   : 'Old Product No.'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTOLDID'
      ProductOldID                   : String(40) not null;

      @Measures.Unit                    : WeightUnit
      @Measures.UNECEUnit               : WeightISOUnit
      @Common.Label                     : 'Gross Weight'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BRGEW'
      GrossWeight                    : Decimal(13, 3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Unit of Weight'
      @Common.Heading                   : 'WUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=GEWEI'
      WeightUnit                     : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Unit of weight ISO'
      @Common.Heading                   : 'WUn'
      @Common.QuickInfo                 : 'Unit of weight in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=GEWEI_ISO'
      WeightISOUnit                  : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Group'
      @Common.Heading                   : 'Prd Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTGROUP'
      ProductGroup                   : String(9) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
      BaseUnit                       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                    : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductItemCategoryGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Gen. item cat. grp'
      @Common.Heading                   : 'ItCGr'
      @Common.QuickInfo                 : 'General item category group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MTPOS_MARA'
      ItemCategoryGroup              : String(4) not null;

      @Measures.Unit                    : WeightUnit
      @Measures.UNECEUnit               : WeightISOUnit
      @Common.Label                     : 'Net Weight'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=NTGEW'
      NetWeight                      : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Division'
      @Common.Heading                   : 'Dv'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SPART'
      Division                       : String(2) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Volume Unit'
      @Common.Heading                   : 'VUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VOLEH'
      VolumeUnit                     : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Volume unit ISO'
      @Common.Heading                   : 'VUI'
      @Common.QuickInfo                 : 'Volume unit in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VOLEH_ISO'
      VolumeISOUnit                  : String(3) not null;

      @Measures.Unit                    : VolumeUnit
      @Measures.UNECEUnit               : VolumeISOUnit
      @Common.Label                     : 'Volume'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MATERIALVOLUME'
      ProductVolume                  : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Authorization Group'
      @Common.Heading                   : 'AGrp'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BEGRU'
      AuthorizationGroup             : String(4) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'ANP Code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=J_1BANP'
      ANPCode                        : String(9) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Size/dimensions'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=GROES'
      SizeOrDimensionText            : String(32) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Industry Std Desc.'
      @Common.QuickInfo                 : 'Industry Standard Description (such as ANSI or ISO)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=NORMT'
      IndustryStandardName           : String(18) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'GTIN'
      @Common.QuickInfo                 : 'Global Trade Item Number (EAN/UPC/GTIN)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=GLOBALTRADEITEMNUMBER'
      ProductStandardID              : String(18) not null;

      @Common.SAPObjectNodeTypeReference: 'GlobalTradeItemNumberCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'EAN Category'
      @Common.Heading                   : 'Ct'
      @Common.QuickInfo                 : 'Category of International Article Number (EAN)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=NUMTP'
      InternationalArticleNumberCat  : String(2) not null;

      @Common.Label                     : 'Configurable'
      @Common.Heading                   : 'Conf.'
      @Common.QuickInfo                 : 'Product is Configurable'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTISCONFIGURABLE'
      ProductIsConfigurable          : Boolean not null;

      @Common.Label                     : 'Batch Management'
      @Common.Heading                   : 'BMR'
      @Common.QuickInfo                 : 'Batch Management Requirement Indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=XCHPF'
      IsBatchManagementRequired      : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Ext. Product Group'
      @Common.Heading                   : 'Ext. Product Grp'
      @Common.QuickInfo                 : 'External Product Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=EXTERNALPRODUCTGROUP'
      ExternalProductGroup           : String(18) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Cross-plant CP'
      @Common.QuickInfo                 : 'Cross-Plant Configurable Product'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CROSSPLANTCONFIGURABLEPRODUCT'
      CrossPlantConfigurableProduct  : String(18) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Serialization Level'
      @Common.Heading                   : 'SL'
      @Common.QuickInfo                 : 'Level of Explicitness for Serial Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SERLV'
      SerialNoExplicitnessLevel      : String(1) not null;

      @Common.Label                     : 'Appr.Batch Recd Req.'
      @Common.Heading                   : 'AR'
      @Common.QuickInfo                 : 'Approved Batch Record Required'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=XGCHP'
      IsApprovedBatchRecordReqd      : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Handling Indicator'
      @Common.Heading                   : 'Hand.Ind.'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFHDLCODE'
      HandlingIndicator              : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'WH Material Group'
      @Common.Heading                   : 'WHMatGrp'
      @Common.QuickInfo                 : 'Warehouse Material Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFWHMATGR'
      WarehouseProductGroup          : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Whse Stor. Condition'
      @Common.Heading                   : 'Cond.'
      @Common.QuickInfo                 : 'Warehouse Storage Condition'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFWHSTC'
      WarehouseStorageCondition      : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Standard HU Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFHUTYPDF'
      StandardHandlingUnitType       : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Serial No. Profile'
      @Common.QuickInfo                 : 'Serial Number Profile'
      SerialNumberProfile            : String(4) not null;

      @Common.Label                     : 'Pilferable'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFPILFRBL'
      IsPilferable                   : Boolean not null;

      @Common.Label                     : 'Relevant for HS'
      @Common.Heading                   : 'Rel. for HS'
      @Common.QuickInfo                 : 'Relevant for Hazardous Substances'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFHAZMAT'
      IsRelevantForHzdsSubstances    : Boolean not null;

      @Measures.Unit                    : TimeUnitForQuarantinePeriod
      @Measures.UNECEUnit               : QuarantinePeriodISOUnit
      @Common.Label                     : 'Quarant. Per.'
      @Common.Heading                   : 'QPer.'
      @Common.QuickInfo                 : 'Quarantine Period'
      QuarantinePeriod               : Decimal (precision : 3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Time Unit'
      @Common.Heading                   : 'Quarantine Time Unit'
      @Common.QuickInfo                 : 'Time Unit for Quarantine Period'
      TimeUnitForQuarantinePeriod    : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Time Unit'
      @Common.Heading                   : 'Quarantine Time Unit'
      @Common.QuickInfo                 : 'Time Unit for Quarantine Time in ISO Code'
      QuarantinePeriodISOUnit        : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Quality Inspec. Grp'
      @Common.Heading                   : 'Quality Inspection Group'
      @Common.QuickInfo                 : 'Quality Inspection Group'
      QualityInspectionGroup         : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Handling Unit Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFHUTYP'
      HandlingUnitType               : String(4) not null;

      @Common.Label                     : 'Varb. Tare Weight'
      @Common.Heading                   : 'V'
      @Common.QuickInfo                 : 'Variable Tare Weight'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFTAREVAR'
      HasVariableTareWeight          : Boolean not null;

      @Measures.Unit                    : UnitForMaxPackagingDimensions
      @Measures.UNECEUnit               : MaxPackggDimensionISOUnit
      @Common.Label                     : 'Max. Pack. Length'
      @Common.QuickInfo                 : 'Maximum Packing Length of Packaging Material'
      MaximumPackagingLength         : Decimal(15, 3) not null;

      @Measures.Unit                    : UnitForMaxPackagingDimensions
      @Measures.UNECEUnit               : MaxPackggDimensionISOUnit
      @Common.Label                     : 'Max. Pack. Width'
      @Common.QuickInfo                 : 'Maximum Packing Width of Packaging Material'
      MaximumPackagingWidth          : Decimal(15, 3) not null;

      @Measures.Unit                    : UnitForMaxPackagingDimensions
      @Measures.UNECEUnit               : MaxPackggDimensionISOUnit
      @Common.Label                     : 'Max. Pack. Height'
      @Common.QuickInfo                 : 'Maximum Packing Height of Packaging Material'
      MaximumPackagingHeight         : Decimal(15, 3) not null;

      @Common.Label                     : 'Maximum Capacity'
      @Common.QuickInfo                 : 'Maximum Allowed Capacity of Packaging Material'
      MaximumCapacity                : Decimal(15, 3) not null;

      @Common.Label                     : 'Overcapacity Toler.'
      @Common.Heading                   : 'OCT'
      @Common.QuickInfo                 : 'Overcapacity Tolerance of the Handling Unit'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFMAXCTOL'
      OvercapacityTolerance          : Decimal(3, 1) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Unit of Measurement'
      @Common.Heading                   : 'UoM'
      @Common.QuickInfo                 : 'Unit of Measure for Maximum Packing Length/Width/Height'
      UnitForMaxPackagingDimensions  : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Unit: ISO Code'
      @Common.Heading                   : 'Unt'
      @Common.QuickInfo                 : 'Unit for Maximum Packing Length/Width/Height in ISO Code'
      MaxPackggDimensionISOUnit      : String(3) not null;

      @Measures.Unit                    : ProductMeasurementUnit
      @Measures.UNECEUnit               : ProductMeasurementISOUnit
      @Common.Label                     : 'Length'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LAENG'
      BaseUnitSpecificProductLength  : Decimal(13, 3) not null;

      @Measures.Unit                    : ProductMeasurementUnit
      @Measures.UNECEUnit               : ProductMeasurementISOUnit
      @Common.Label                     : 'Width'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BREIT'
      BaseUnitSpecificProductWidth   : Decimal(13, 3) not null;

      @Measures.Unit                    : ProductMeasurementUnit
      @Measures.UNECEUnit               : ProductMeasurementISOUnit
      @Common.Label                     : 'Height'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=HOEHE'
      BaseUnitSpecificProductHeight  : Decimal(13, 3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Unit of Dimension'
      @Common.QuickInfo                 : 'Unit of Dimension for Length/Width/Height'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEABM'
      ProductMeasurementUnit         : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Dimension unit ISO'
      @Common.Heading                   : 'DUI'
      @Common.QuickInfo                 : 'Unit for length/breadth/height in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEABM_ISO'
      ProductMeasurementISOUnit      : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Category'
      @Common.Heading                   : 'Ct'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODCATEGORY'
      ArticleCategory                : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Industry'
      @Common.Heading                   : 'I'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MBRSH'
      IndustrySector                 : String(1) not null;

      @odata.Precision                  : 7
      @odata.Type                       : 'Edm.DateTimeOffset'
      @Core.Computed                    : true
      @Common.Label                     : 'Last Changed'
      @Common.QuickInfo                 : 'Change Time Stamp'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CHANGEDATETIME'
      LastChangeDateTime             : Timestamp;

      @Core.Computed                    : true
      @Common.Label                     : 'Last Changed Time'
      @Common.Heading                   : 'Last Chgd. Time'
      @Common.QuickInfo                 : 'Time of Last Change'
      LastChangeTime                 : Time not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'DG indicator profile'
      @Common.Heading                   : 'Pro.'
      @Common.QuickInfo                 : 'Dangerous Goods Indicator Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ADGE_PROFL'
      DangerousGoodsIndProfile       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Document Change No.'
      @Common.Heading                   : 'Ch.no.'
      @Common.QuickInfo                 : 'Document change number (without document management system)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AESZN'
      ProductDocumentChangeNumber    : String(6) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Number Of Sheets'
      @Common.Heading                   : 'No.'
      @Common.QuickInfo                 : 'Number Of Sheets (without Document Management system)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BLANZ'
      ProductDocumentPageCount       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Page Number'
      @Common.Heading                   : 'PNo'
      @Common.QuickInfo                 : 'Page Number of document (without Document Management system)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BLATT'
      ProductDocumentPageNumber      : String(3) not null;

      @Common.Label                     : 'CAD Indicator'
      @Common.Heading                   : 'CAD'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CADKZ'
      DocumentIsCreatedByCAD         : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Prod./insp. memo'
      @Common.QuickInfo                 : 'Production/inspection memo'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FERTH'
      ProductionOrInspectionMemoTxt  : String(18) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Page format'
      @Common.Heading                   : 'For.'
      @Common.QuickInfo                 : 'Page Format of Production Memo'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FORMT'
      ProductionMemoPageFormat       : String(4) not null;

      @Common.Label                     : 'Highly viscous'
      @Common.Heading                   : 'HighlyVisc'
      @Common.QuickInfo                 : 'Indicator: Highly Viscous'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ADGE_IHIVI'
      ProductIsHighlyViscous         : Boolean not null;

      @Common.Label                     : 'In bulk/liquid'
      @Common.QuickInfo                 : 'Indicator: In Bulk/Liquid'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ADGE_ILOOS'
      TransportIsInBulk              : Boolean not null;

      @Common.Label                     : 'Assign effect. vals'
      @Common.Heading                   : 'Par.ef.'
      @Common.QuickInfo                 : 'Assign effectivity parameter values/ override change numbers'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CC_MTEFF'
      ProdEffctyParamValsAreAssigned : Boolean not null;

      @Common.Label                     : 'Environmentally rlvt'
      @Common.Heading                   : 'E'
      @Common.QuickInfo                 : 'Environmentally Relevant'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZUMW'
      ProdIsEnvironmentallyRelevant  : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Lab/Office'
      @Common.Heading                   : 'L/O'
      @Common.QuickInfo                 : 'Laboratory/Design Office'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LABOR'
      LaboratoryOrDesignOffice       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Matl Grp Pack.Matls'
      @Common.Heading                   : 'GrPMt'
      @Common.QuickInfo                 : 'Material Group: Packaging Materials'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MAGRV'
      PackagingProductGroup          : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Ref. Mat. for Pckg'
      @Common.Heading                   : 'Reference Material'
      @Common.QuickInfo                 : 'Reference Material for Materials Packed in Same Way'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PL_RMATP'
      PackingReferenceProduct        : String(18) not null;

      @Common.Label                     : 'Basic Material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WRKST'
      BasicProduct                   : String(48) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Document'
      @Common.QuickInfo                 : 'Document number (without document management system)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZEINR'
      ProductDocumentNumber          : String(22) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Document Version'
      @Common.Heading                   : 'Vers'
      @Common.QuickInfo                 : 'Document version (without Document Management system)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZEIVR'
      ProductDocumentVersion         : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Document Type'
      @Common.Heading                   : 'Type'
      @Common.QuickInfo                 : 'Document type (without Document Management system)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZEIAR'
      ProductDocumentType            : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Page Format'
      @Common.Heading                   : 'Page'
      @Common.QuickInfo                 : 'Page Format of Document (without Document Management system)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZEIFO'
      ProductDocumentPageFormat      : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Chemical Compliance Relevance Indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CHML_CMPLNC_RLVNCE_IND_PM'
      ProdChmlCmplncRelevanceCode    : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Qual.f.FreeGoodsDis.'
      @Common.Heading                   : 'DiK'
      @Common.QuickInfo                 : 'Material qualifies for discount in kind'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=NRFHG'
      DiscountInKindEligibility      : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Mfr Part Number'
      @Common.Heading                   : 'MPN'
      @Common.QuickInfo                 : 'Manufacturer Part Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MFRPN'
      ProductManufacturerNumber      : String(40) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Manufacturer'
      @Common.Heading                   : 'Manufact.'
      @Common.QuickInfo                 : 'Number of a Manufacturer'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MFRNR'
      ManufacturerNumber             : String(10) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Mfr Part Profile'
      @Common.Heading                   : 'MPP'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MPROF'
      ManufacturerPartProfile        : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Int. material number'
      @Common.Heading                   : 'Int. material no.'
      @Common.QuickInfo                 : 'Number of firm''s own (internal) inventory-managed material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MPMAT'
      OwnInventoryManagedProduct     : String(18) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;

      @Common.Composition: true
      _ProductBasicText              : Composition of many PRODUCT_0002.ProductBasicText
                                         on _ProductBasicText._Product = $self;

      @Common.Composition: true
      _ProductChangeMaster           : Composition of many PRODUCT_0002.ProductChangeMaster
                                         on _ProductChangeMaster._Product = $self;

      @Common.Composition: true
      _ProductDescription            : Composition of many PRODUCT_0002.ProductDescription
                                         on _ProductDescription._Product = $self;

      @Common.Composition: true
      _ProductEWMWarehouse           : Composition of many PRODUCT_0002.ProductEWMWarehouse
                                         on _ProductEWMWarehouse._Product = $self;

      @Common.Composition: true
      _ProductInspectionText         : Composition of many PRODUCT_0002.ProductInspectionText
                                         on _ProductInspectionText._Product = $self;

      @Common.Composition: true
      _ProductInternalComment        : Composition of many PRODUCT_0002.ProductInternalComment
                                         on _ProductInternalComment._Product = $self;

      @Common.Composition: true
      _ProductPlant                  : Composition of many PRODUCT_0002.ProductPlant
                                         on _ProductPlant._Product = $self;

      @Common.Composition: true
      _ProductProcurement            : Composition of one PRODUCT_0002.ProductProcurement
                                         on _ProductProcurement._Product = $self;

      @Common.Composition: true
      _ProductPurchaseOrderText      : Composition of many PRODUCT_0002.ProductPurchaseOrderText
                                         on _ProductPurchaseOrderText._Product = $self;

      @Common.Composition: true
      _ProductQualityManagement      : Composition of one PRODUCT_0002.ProductQualityManagement
                                         on _ProductQualityManagement._Product = $self;

      @Common.Composition: true
      _ProductSales                  : Composition of one PRODUCT_0002.ProductSales
                                         on _ProductSales._Product = $self;

      @Common.Composition: true
      _ProductSalesDelivery          : Composition of many PRODUCT_0002.ProductSalesDelivery
                                         on _ProductSalesDelivery._Product = $self;

      @Common.Composition: true
      _ProductStorage                : Composition of one PRODUCT_0002.ProductStorage
                                         on _ProductStorage._Product = $self;

      @Common.Composition: true
      _ProductUnitOfMeasure          : Composition of many PRODUCT_0002.ProductUnitOfMeasure
                                         on _ProductUnitOfMeasure._Product = $self;

      @Common.Composition: true
      _ProductValuation              : Composition of many PRODUCT_0002.ProductValuation
                                         on _ProductValuation._Product = $self;
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Basic - Text'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.FilterRestrictions.Filterable                      : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [{
  Property          : ProductLongText,
  AllowedExpressions: 'SearchExpression'
}]
@Capabilities.SortRestrictions.NonSortableProperties             : ['ProductLongText']
@Capabilities.InsertRestrictions.RequiredProperties              : ['Language']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'TextObjectType',
  'Language'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductBasicText {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Material'
      @Common.QuickInfo       : 'Material Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                        : String(18) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Text ID'
      @Common.Heading         : 'ID'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TDID'
  key TextObjectType                 : String(4) not null;

      @Core.Immutable         : true
      @Common.Label           : 'Language Key'
      @Common.Heading         : 'Language'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SPRAS'
  key Language                       : String(2) not null;

      @Common.Label: 'Text Content'
      ProductLongText                : String not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Creation timestamp of Product Long texts'
      ProdLongTxtCreationDateTime    : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Created By'
      @Common.QuickInfo       : 'Name of Person Responsible for Creating the Object'
      CreatedByUser                  : String(12) not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Last Change timestamp of Product Long texts'
      ProdLongTxtLastChangedDateTime : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Changed By'
      @Common.QuickInfo       : 'Name of Person Who Changed Object'
      LastChangedByUser              : String(12) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Change Master'
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : ['ChangeNumber']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['ChangeNumber']
@Capabilities.UpdateRestrictions.Updatable                       : false
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeleteRestrictions.Deletable                       : false
entity PRODUCT_0002.ProductChangeMaster {
      @Core.Computed     : true
      @Common.IsUpperCase: true
      @Common.Label      : 'Material'
      @Common.QuickInfo  : 'Material Number'
  key Product       : String(18) not null;

      @Core.Immutable    : true
      @Common.IsUpperCase: true
      @Common.Label      : 'Change Number'
      @Common.Heading    : 'Change No.'
  key ChangeNumber  : String(12) not null;

      @Common.IsUpperCase: true
      @Common.Label      : 'Revision Level'
      @Common.Heading    : 'Revision Level without Conversion Exit'
      @Common.QuickInfo  : 'Revision Level without Conversion Exit'
      RevisionLevel : String(2) not null;
      _Product      : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Description'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : ['Language']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['Language']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductDescription {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product            : String(18) not null;

      @Core.Immutable         : true
      @Common.Label           : 'Language Key'
      @Common.Heading         : 'Language'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SPRAS'
  key Language           : String(2) not null;

      @Common.Label           : 'Product Description'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTDESCRIPTION'
      ProductDescription : String(40) not null;
      SAP__Messages      : many PRODUCT_0002.SAP__Message not null;
      _Product           : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product EWM Storage Type'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : ['EWMStorageType']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['EWMStorageType']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductEWMWarehouse'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : EWMMaximumStorageQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMaxStorQuantityBaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMaxStorQtyBaseUnitISOCode,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMinimumStorageQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMinStorQuantityBaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMinStorQtyBaseUnitISOCode,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMinReplnmtQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMinReplnmtQtyBaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : EWMMinReplnmtQtyBsUnitISOCode,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductEWMStorageType {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Warehouse Number'
      @Common.Heading         : 'WhN'
      @Common.QuickInfo       : 'Warehouse Number/Warehouse Complex'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FLGNUM'
  key EWMWarehouse                   : String(4) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Business Partner'
      @Common.QuickInfo       : 'Business Partner Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=BU_PARTNER'
  key EntitledToDisposeParty         : String(10) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Storage Type'
      @Common.Heading         : 'Ty.'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FLGTYP'
  key EWMStorageType                 : String(4) not null;

      @Common.Label           : 'Product ID'
      @Common.QuickInfo       : 'Internal Number (UID) for Product'
      ProductInternalUUID            : UUID;

      @Common.Label           : 'SC Unit GUID'
      @Common.Heading         : 'Supply Chain Unit GUID'
      @Common.QuickInfo       : 'Supply Chain Unit GUID'
      SupplyChainUnitUUID            : UUID;

      @Common.Label           : 'Ent. to Dispose'
      @Common.Heading         : 'Ent.toDisp'
      @Common.QuickInfo       : 'Party Entitled to Dispose (GUID)'
      EWMPartyEntitledToDisposeUUID  : UUID;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Storage Section'
      @Common.Heading         : 'SSctInd'
      @Common.QuickInfo       : 'Storage Section Indicator'
      EWMStorageSectionMethod        : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Storage Bin Type'
      @Common.Heading         : 'BT'
      EWMStorageBinType              : String(4) not null;

      @Common.IsDigitSequence : true
      @Common.Label           : 'Maximum No. of Bins'
      @Common.Heading         : 'MaxBns'
      EWMMaximumNumberOfBins         : String(3) not null;

      @Measures.Unit          : EWMMaxStorQuantityBaseUnit
      @Measures.UNECEUnit     : EWMMaxStorQtyBaseUnitISOCode
      @Common.Label           : 'Maximum Quantity'
      @Common.Heading         : 'Max.Qty'
      EWMMaximumStorageQuantity      : Decimal(15, 3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      EWMMaxStorQuantityBaseUnit     : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Base unit ISO code'
      @Common.Heading         : 'BUI'
      @Common.QuickInfo       : 'Base unit of measure in ISO code'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      EWMMaxStorQtyBaseUnitISOCode   : String(3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      EWMMaxStorQuantityDisplayUnit  : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'ISO Code'
      @Common.Heading         : 'ISO'
      @Common.QuickInfo       : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      EWMMaxStorageQtyDspUnitISOCode : String(3) not null;

      @Measures.Unit          : EWMMinStorQuantityBaseUnit
      @Measures.UNECEUnit     : EWMMinStorQtyBaseUnitISOCode
      @Common.Label           : 'Minimum Quantity'
      @Common.Heading         : 'Min. Qty'
      EWMMinimumStorageQuantity      : Decimal(15, 3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      EWMMinStorQuantityBaseUnit     : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Base unit ISO code'
      @Common.Heading         : 'BUI'
      @Common.QuickInfo       : 'Base unit of measure in ISO code'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      EWMMinStorQtyBaseUnitISOCode   : String(3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      EWMMinStorQuantityDisplayUnit  : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'ISO Code'
      @Common.Heading         : 'ISO'
      @Common.QuickInfo       : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      EWMMinStorageQtyDspUnitISOCode : String(3) not null;

      @Measures.Unit          : EWMMinReplnmtQtyBaseUnit
      @Measures.UNECEUnit     : EWMMinReplnmtQtyBsUnitISOCode
      @Common.Label           : 'Min. Replenish. Qty'
      @Common.Heading         : 'MnRQ'
      @Common.QuickInfo       : 'Minimum Replenishment Quantity'
      EWMMinReplnmtQuantity          : Decimal(15, 3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      EWMMinReplnmtQtyBaseUnit       : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Base unit ISO code'
      @Common.Heading         : 'BUI'
      @Common.QuickInfo       : 'Base unit of measure in ISO code'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      EWMMinReplnmtQtyBsUnitISOCode  : String(3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      EWMMinReplnmtQtyDisplayUnit    : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'ISO Code'
      @Common.Heading         : 'ISO'
      @Common.QuickInfo       : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      EWMMinReplnmtQtyDspUnitISOCode : String(3) not null;

      @Common.Label           : 'Max./Min. Qty'
      @Common.Heading         : 'Min.Qty (% of Max. Qty)'
      @Common.QuickInfo       : 'Minimum Quantity as Percentage of Maximum Quantity'
      EWMMinStorQtyOfMaxStorQtyInPct : Decimal(5, 2) not null;

      @Common.Label           : 'Thrshld Addition'
      @Common.Heading         : 'Threshold Addition'
      @Common.QuickInfo       : 'Putaway Threshold Addition (in Percent of Storage Bin)'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_SPLITTH'
      EWMSpltPtwyThresholdInPercent  : Decimal(5, 2) not null;

      @Common.Label           : 'Split During Putaway'
      @Common.Heading         : 'Split Put.'
      EWMProdIsSplitOnPtwy           : Boolean not null;

      @Common.Label           : 'Skip During Putaway'
      @Common.Heading         : 'SkipPuta'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_SKIPPTW'
      EWMProdIsSkippedOnPtwy         : Boolean not null;

      @Common.Label           : 'No Replenishment'
      @Common.Heading         : 'ND'
      EWMHasNoReplenishment          : Boolean not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Empty StorageBin Sch'
      @Common.Heading         : 'BS'
      @Common.QuickInfo       : 'Sort Rule for Empty Storage Bin Search'
      EWMStorageBinSearchRule        : String(1) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Quantity Classif.'
      @Common.QuickInfo       : 'Quantity Classification in Warehouse'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_QUANCLA'
      EWMProdQuantityClassification  : String(1) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Putaway Qty Classif.'
      @Common.QuickInfo       : 'Putaway Quantity Classification'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_QUANCLA_PUT'
      EWMProdPtwyQtyClassification   : String(1) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Putaway Seq.'
      @Common.Heading         : 'Putaw.Seq'
      @Common.QuickInfo       : 'Putaway Sequence'
      EWMPtwySequence                : String(2) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductEWMWarehouse           : Association to one PRODUCT_0002.ProductEWMWarehouse {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product EWM Warehouse'
@Common.Messages                                                 : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties        : [{
  NavigationProperty: _ProductEWMStorageType,
  InsertRestrictions: {Insertable: true}
}]
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'EWMWarehouse',
  'EntitledToDisposeParty'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductEWMStorageType'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductEWMWarehouse {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Warehouse Number'
      @Common.Heading         : 'WhN'
      @Common.QuickInfo       : 'Warehouse Number/Warehouse Complex'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FLGNUM'
  key EWMWarehouse                   : String(4) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Business Partner'
      @Common.QuickInfo       : 'Business Partner Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=BU_PARTNER'
  key EntitledToDisposeParty         : String(10) not null;

      @Common.Label           : 'Product ID'
      @Common.QuickInfo       : 'Internal Number (UID) for Product'
      ProductInternalUUID            : UUID;

      @Common.Label           : 'SC Unit GUID'
      @Common.Heading         : 'Supply Chain Unit GUID'
      @Common.QuickInfo       : 'Supply Chain Unit GUID'
      SupplyChainUnitUUID            : UUID;

      @Common.Label           : 'Ent. to Dispose'
      @Common.Heading         : 'Ent.toDisp'
      @Common.QuickInfo       : 'Party Entitled to Dispose (GUID)'
      EWMPartyEntitledToDisposeUUID  : UUID;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      BaseUnit                       : String(3) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Base unit ISO code'
      @Common.Heading         : 'BUI'
      @Common.QuickInfo       : 'Base unit of measure in ISO code'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                    : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Process Block Prof.'
      @Common.Heading         : 'Process Block Profile'
      @Common.QuickInfo       : 'Process Block Profile'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_PROCPRFL'
      EWMProductProcessBlockProfile  : String(2) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Proc.Type Det. Ind.'
      @Common.Heading         : 'PTDInd.'
      @Common.QuickInfo       : 'Control Indicator for Process Type Determination'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_PTDETIND'
      EWMProcessTypeControlCode      : String(2) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'StagArea/DoorDet.Grp'
      @Common.Heading         : 'SDDGr'
      @Common.QuickInfo       : 'Staging Area and Door Determination Group'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_DRDETGR'
      EWMStggAreaDeterminationGroup  : String(4) not null;

      @Common.Label           : 'Min. Shelf Life'
      @Common.Heading         : 'Min. Life'
      @Common.QuickInfo       : 'Required Minimum Shelf Life'
      RequiredMinShelfLife           : Decimal (precision : 11) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Putaway Control'
      @Common.Heading         : 'Ptwy'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_PUT_STRA'
      EWMPtwyControlStrategy         : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Storage Section Ind.'
      @Common.Heading         : 'SecIn'
      @Common.QuickInfo       : 'Storage Section Indicator'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FLVS_LGBKZ'
      EWMStorageSectionMethod        : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Storage Bin Type'
      @Common.Heading         : 'BT'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FLVS_LPTYP'
      EWMStorageBinType              : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Bulk Storage'
      @Common.Heading         : 'Blk'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FLVS_BLOCK2'
      EWMBulkStorageMethod           : String(2) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Stock Removal Ctrl'
      @Common.Heading         : 'Rmvl'
      @Common.QuickInfo       : 'Stock Removal Control'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_REM_STRA'
      EWMStockRemovalControlStrategy : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Stk Determin. Group'
      @Common.Heading         : 'SDGrp'
      @Common.QuickInfo       : 'Stock Determination Group'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_STCKDETGR'
      EWMStockDeterminationGroup     : String(2) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Cyc. Coun. Ind.'
      @Common.Heading         : 'CC Indicator'
      @Common.QuickInfo       : 'Cycle Counting Indicator'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FPI_CCIND'
      EWMPhysInventoryCountingCycle  : String(1) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      EWMPreferredUnit               : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'ISO Code'
      @Common.Heading         : 'ISO'
      @Common.QuickInfo       : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      EWMPreferredUnitISOCode        : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Quality Insp. Group'
      @Common.Heading         : 'Quality Inspection Group'
      @Common.QuickInfo       : 'Quality Inspection Group'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=%2FSCWM%2FDE_QGRP'
      EWMQualityInspectionGroup      : String(4) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};

      @Common.Composition: true
      _ProductEWMStorageType         : Composition of many PRODUCT_0002.ProductEWMStorageType
                                         on _ProductEWMStorageType._ProductEWMWarehouse = $self;
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Inspection - Text'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.FilterRestrictions.Filterable                      : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [{
  Property          : ProductLongText,
  AllowedExpressions: 'SearchExpression'
}]
@Capabilities.SortRestrictions.NonSortableProperties             : ['ProductLongText']
@Capabilities.InsertRestrictions.RequiredProperties              : ['Language']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'TextObjectType',
  'Language'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductInspectionText {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Material'
      @Common.QuickInfo       : 'Material Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                        : String(18) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Text ID'
      @Common.Heading         : 'ID'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TDID'
  key TextObjectType                 : String(4) not null;

      @Core.Immutable         : true
      @Common.Label           : 'Language Key'
      @Common.Heading         : 'Language'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SPRAS'
  key Language                       : String(2) not null;

      @Common.Label: 'Text Content'
      ProductLongText                : String not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Creation timestamp of Product Long texts'
      ProdLongTxtCreationDateTime    : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Created By'
      @Common.QuickInfo       : 'Name of Person Responsible for Creating the Object'
      CreatedByUser                  : String(12) not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Last Change timestamp of Product Long texts'
      ProdLongTxtLastChangedDateTime : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Changed By'
      @Common.QuickInfo       : 'Name of Person Who Changed Object'
      LastChangedByUser              : String(12) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Internal Note - Text'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.FilterRestrictions.Filterable                      : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [{
  Property          : ProductLongText,
  AllowedExpressions: 'SearchExpression'
}]
@Capabilities.SortRestrictions.NonSortableProperties             : ['ProductLongText']
@Capabilities.InsertRestrictions.RequiredProperties              : ['Language']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'TextObjectType',
  'Language'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductInternalComment {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Material'
      @Common.QuickInfo       : 'Material Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                        : String(18) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Text ID'
      @Common.Heading         : 'ID'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TDID'
  key TextObjectType                 : String(4) not null;

      @Core.Immutable         : true
      @Common.Label           : 'Language Key'
      @Common.Heading         : 'Language'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SPRAS'
  key Language                       : String(2) not null;

      @Common.Label: 'Text Content'
      ProductLongText                : String not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Creation timestamp of Product Long texts'
      ProdLongTxtCreationDateTime    : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Created By'
      @Common.QuickInfo       : 'Name of Person Responsible for Creating the Object'
      CreatedByUser                  : String(12) not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Last Change timestamp of Product Long texts'
      ProdLongTxtLastChangedDateTime : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Changed By'
      @Common.QuickInfo       : 'Name of Person Who Changed Object'
      LastChangedByUser              : String(12) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant'
@Common.Messages                                                 : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties        : [
  {
    NavigationProperty: _ProdPlantInternationalTrade,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProdPlntMRPText,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantCosting,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantForecast,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantInspTypeSetting,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantMRP,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantPlanning,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantProcurement,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantPurchaseTax,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantQualityManagement,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantSales,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantStorage,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantStorageLocation,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantSupplyPlanning,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductPlantWorkScheduling,
    InsertRestrictions: {Insertable: true}
  }
]
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : ['Plant']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['Plant']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_ProdPlantInternationalTrade',
  '_ProdPlntMRPText',
  '_Product',
  '_ProductPlantCosting',
  '_ProductPlantForecast',
  '_ProductPlantInspTypeSetting',
  '_ProductPlantMRP',
  '_ProductPlantPlanning',
  '_ProductPlantProcurement',
  '_ProductPlantPurchaseTax',
  '_ProductPlantQualityManagement',
  '_ProductPlantSales',
  '_ProductPlantStorage',
  '_ProductPlantStorageLocation',
  '_ProductPlantSupplyPlanning',
  '_ProductPlantWorkScheduling'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : ProductMinControlTemperature,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductMaxControlTemperature,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductControlTemperatureUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProdCtrlTemperatureUnitISOCode,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductPlant {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Plant'
      @Common.Heading                   : 'Plnt'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductProfileCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Material Status'
      @Common.Heading                   : 'Plant-Specific Material Status'
      @Common.QuickInfo                 : 'Plant-Specific Material Status'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MMSTA'
      ProfileCode                    : String(2) not null;

      @Common.Label                     : 'Valid From'
      @Common.QuickInfo                 : 'Date from Which the Plant-Specific Material Status Is Valid'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MMSTD'
      ProfileValidityStartDate       : Date;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Fiscal Year Variant'
      @Common.Heading                   : 'FV'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PERIV'
      FiscalYearVariant              : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductConsumptionPeriodType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Period Indicator'
      @Common.Heading                   : 'PI'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PERKZ'
      PeriodType                     : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Profit Center'
      @Common.Heading                   : 'Profit Ctr'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRCTR'
      ProfitCenter                   : String(10) not null;

      @Common.Label                     : 'DF at plant level'
      @Common.Heading                   : 'Pl'
      @Common.QuickInfo                 : 'Flag Material for Deletion at Plant Level'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LVOWK'
      IsMarkedForDeletion            : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Conf. Material'
      @Common.Heading                   : 'Configurable Material'
      @Common.QuickInfo                 : 'Configurable Material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=STDPD'
      ConfigurableProduct            : String(18) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Stock Determ. Group'
      @Common.Heading                   : 'Stock Determination Group'
      @Common.QuickInfo                 : 'Stock determination group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BF_GROUP'
      StockDeterminationGroup        : String(4) not null;

      @Common.Label                     : 'Batch Mgmt Rqt(Plnt)'
      @Common.Heading                   : 'BMR'
      @Common.QuickInfo                 : 'Batch Management Requirement Indicator for Plant'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=XCHPF_WERKS'
      IsBatchManagementRequired      : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Serial No. Profile'
      @Common.Heading                   : 'Profl.'
      @Common.QuickInfo                 : 'Serial Number Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SERAIL'
      SerialNumberProfile            : String(4) not null;

      @Common.Label                     : 'Neg. Stocks In Plant'
      @Common.Heading                   : 'NS'
      @Common.QuickInfo                 : 'Negative stocks allowed in plant'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=XMCNG'
      IsNegativeStockAllowed         : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Matl. CFOP Category'
      @Common.Heading                   : 'Material CFOP Category'
      @Common.QuickInfo                 : 'Material CFOP Category'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=J_1BINDUS3'
      ProductCFOPCategory            : String(2) not null;

      @Common.Label                     : 'Is Excise Tax Relevant'
      @Common.QuickInfo                 : 'Excise Tax Relevance Indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CMD_PRD_EXCISE_TAX_RLVNCE'
      ProductIsExciseTaxRelevant     : Boolean not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
      GoodsIssueUnit                 : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Unit of issue in ISO'
      @Common.Heading                   : 'UII'
      @Common.QuickInfo                 : 'Unit of issue in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AUSME_ISO'
      GoodsIssueISOUnit              : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Distr. profile'
      @Common.QuickInfo                 : 'Distribution profile of material in plant'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FPRFM'
      DistrCntrDistributionProfile   : String(3) not null;

      @Common.Label                     : 'Critical Part'
      @Common.Heading                   : 'Cri'
      @Common.QuickInfo                 : 'Indicator: Critical part'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZKRI'
      ProductIsCriticalPrt           : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'ProductLogisticsHandlingGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Log. handling group'
      @Common.Heading                   : 'LHG'
      @Common.QuickInfo                 : 'Logistics handling group for workload calculation'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LOGGR'
      ProductLogisticsHandlingGroup  : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Material Freight Grp'
      @Common.Heading                   : 'MatFrtGp'
      @Common.QuickInfo                 : 'Material Freight Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MFRGR'
      ProductFreightGroup            : String(8) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'OB Reference Materl'
      @Common.QuickInfo                 : 'Reference Material for Original Batches'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VBOB_OB_RFMAT'
      OriginalBatchReferenceProduct  : String(18) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'OB Management'
      @Common.Heading                   : 'OBM'
      @Common.QuickInfo                 : 'Indicator for Original Batch Management'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=UCHKZ'
      OriglBatchManagementIsRequired : String(1) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
      BaseUnit                       : String(3) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                    : String(3) not null;

      @Measures.Unit                    : ProductControlTemperatureUnit
      @Measures.UNECEUnit               : ProdCtrlTemperatureUnitISOCode
      @Common.Label                     : 'Min. Temperature'
      @Common.Heading                   : 'Minimum Temperature'
      @Common.QuickInfo                 : 'Minimum Temperature'
      ProductMinControlTemperature   : Decimal(7, 2) not null;

      @Measures.Unit                    : ProductControlTemperatureUnit
      @Measures.UNECEUnit               : ProdCtrlTemperatureUnitISOCode
      @Common.Label                     : 'Max. Temperature'
      @Common.Heading                   : 'Maximum Temperature'
      @Common.QuickInfo                 : 'Maximum Temperature'
      ProductMaxControlTemperature   : Decimal(7, 2) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Temperature UoM'
      @Common.Heading                   : 'Unit of Measure of Temperatu'
      @Common.QuickInfo                 : 'Unit of Measure of Temperature'
      ProductControlTemperatureUnit  : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Control Temperature ISO Unit'
      ProdCtrlTemperatureUnitISOCode : String(3) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;

      @Common.Composition: true
      _ProdPlantInternationalTrade   : Composition of one PRODUCT_0002.ProductPlantInternationalTrade
                                         on _ProdPlantInternationalTrade._ProductPlant = $self;

      @Common.Composition: true
      _ProdPlntMRPText               : Composition of many PRODUCT_0002.ProductPlantMRPText
                                         on _ProdPlntMRPText._ProductPlant = $self;
      _Product                       : Association to one PRODUCT_0002.Product {};

      @Common.Composition: true
      _ProductPlantCosting           : Composition of one PRODUCT_0002.ProductPlantCosting
                                         on _ProductPlantCosting._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantForecast          : Composition of one PRODUCT_0002.ProductPlantForecast
                                         on _ProductPlantForecast._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantInspTypeSetting   : Composition of many PRODUCT_0002.ProductPlantInspTypeSetting
                                         on _ProductPlantInspTypeSetting._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantMRP               : Composition of many PRODUCT_0002.ProductPlantMRP
                                         on _ProductPlantMRP._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantPlanning          : Composition of one PRODUCT_0002.ProductPlantPlanning
                                         on _ProductPlantPlanning._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantProcurement       : Composition of one PRODUCT_0002.ProductPlantProcurement
                                         on _ProductPlantProcurement._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantPurchaseTax       : Composition of many PRODUCT_0002.ProductPlantPurchaseTax
                                         on _ProductPlantPurchaseTax._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantQualityManagement : Composition of one PRODUCT_0002.ProductPlantQualityManagement
                                         on _ProductPlantQualityManagement._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantSales             : Composition of one PRODUCT_0002.ProductPlantSales
                                         on _ProductPlantSales._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantStorage           : Composition of one PRODUCT_0002.ProductPlantStorage
                                         on _ProductPlantStorage._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantStorageLocation   : Composition of many PRODUCT_0002.ProductPlantStorageLocation
                                         on _ProductPlantStorageLocation._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantSupplyPlanning    : Composition of one PRODUCT_0002.ProductPlantSupplyPlanning
                                         on _ProductPlantSupplyPlanning._ProductPlant = $self;

      @Common.Composition: true
      _ProductPlantWorkScheduling    : Composition of one PRODUCT_0002.ProductPlantWorkScheduling
                                         on _ProductPlantWorkScheduling._ProductPlant = $self;
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Costing'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : CostingLotSize,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductPlantCosting {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                       : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Plant'
      @Common.Heading                   : 'Plnt'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                         : String(4) not null;

      @Common.Label                     : 'Co-Product'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZKUPMAT'
      IsCoProduct                   : Boolean not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Costing Lot Size'
      @Common.QuickInfo                 : 'Lot Size for Product Costing'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_LOSGR'
      CostingLotSize                : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Group'
      @Common.QuickInfo                 : 'Key for Task List Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PLNNR'
      TaskListGroup                 : String(8) not null;

      @Common.SAPObjectNodeTypeReference: 'BillOfOperationsType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Task List Type'
      @Common.Heading                   : 'TLType'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PLNTY'
      TaskListType                  : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'ProcurementSubType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Special Procurement Type'
      @Common.QuickInfo                 : 'Special Procurement Type for Costing'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SPECIALPROCUREMENTTYPE'
      CostingSpecialProcurementType : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Alternative BOM'
      @Common.Heading                   : 'AltBOM'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=STALT'
      SourceBOMAlternative          : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'BOM Usage'
      @Common.Heading                   : 'BOM Usg'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=STLAN'
      ProductBOMUsage               : String(1) not null;

      @Common.Label                     : 'Do Not Cost'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTISCOSTINGRELEVANT'
      ProductIsCostingRelevant      : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Group Counter'
      @Common.Heading                   : 'GrC'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PLNAL'
      TaskListGroupCounter          : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Variance Key'
      @Common.Heading                   : 'VarKey'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AWSLS'
      VarianceKey                   : String(6) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Production Version'
      @Common.Heading                   : 'Ver.'
      @Common.QuickInfo                 : 'Production Version To Be Costed'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_VERID'
      CostingProductionVersion      : String(4) not null;

      @Common.Label                     : 'Fixed-Price Co-Prod.'
      @Common.QuickInfo                 : 'Fixed-Price Co-Product'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_FIXPRKU'
      IsFixedPriceCoProduct         : Boolean not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                      : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                   : String(3) not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
      _ProductPlant                 : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Forecast'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantForecast {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                       : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                         : String(4) not null;

      @Common.Label           : 'Date to'
      @Common.QuickInfo       : 'To date of the material to be copied for consumption'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VRBDT'
      ConsumptionRefUsageEndDate    : Date;

      @Common.Label           : 'Multiplier'
      @Common.QuickInfo       : 'Multiplier for reference material for consumption'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VRBFK'
      CnsmpnQuantityMultiplierValue : Decimal(4, 2) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'RefMatl: consumption'
      @Common.Heading         : 'Consumable mat.'
      @Common.QuickInfo       : 'Reference material for consumption'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VRBMT'
      ConsumptionReferenceProduct   : String(18) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'RefPlant:consumption'
      @Common.Heading         : 'CNPL'
      @Common.QuickInfo       : 'Reference plant for consumption'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VRBWK'
      ConsumptionReferencePlant     : String(4) not null;

      @Common.Label           : 'Correction factors'
      @Common.Heading         : 'C'
      @Common.QuickInfo       : 'Indicator: take correction factors into account'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=KZKFK'
      CorrectionFactorIsRequired    : Boolean not null;

      @Common.Label           : 'Reset automatically'
      @Common.QuickInfo       : 'Reset Forecast Model Automatically'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=AUTRU'
      ForecastModelIsReset          : Boolean not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
      _ProductPlant                 : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Inspection Type Settings'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['InspectionLotType']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantInspTypeSetting {
      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Inspection Type'
      @Common.Heading                   : 'InspType'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QPART'
  key InspectionLotType              : String(8) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Material'
      @Common.QuickInfo                 : 'Material Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                        : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Plant'
      @Common.Heading                   : 'Plnt'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Common.Label                     : 'Insp. with Task List'
      @Common.Heading                   : 'List'
      @Common.QuickInfo                 : 'Inspection with Task List'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QPPL'
      InspLotIsTaskListRequired      : Boolean not null;

      @Common.Label                     : 'Insp. with Mat Spec.'
      @Common.QuickInfo                 : 'Inspect with Material Specification'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QSPEZUEBER'
      InspLotHasMaterialSpec         : Boolean not null;

      @Common.Label                     : 'Insp. by Configuratn'
      @Common.QuickInfo                 : 'Inspection Specifications from Configuration'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QCONF'
      InspLotHasConfignSpecification : Boolean not null;

      @Common.Label                     : 'Inspect by Batch'
      @Common.QuickInfo                 : 'Inspection Specifications from Batch Determination'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QCHARG'
      InspLotHasBatchCharc           : Boolean not null;

      @Common.Label                     : 'Automatic Assignment'
      @Common.Heading                   : 'APlS'
      @Common.QuickInfo                 : 'Automatic Specification Assignment'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QAPP_D'
      InspLotHasAutomSpecAssgmt      : Boolean not null;

      @Common.Label                     : 'Inspect Charcs'
      @Common.Heading                   : 'ChIn'
      @Common.QuickInfo                 : 'Inspect by Characteristics'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QMERK'
      InspLotHasCharc                : Boolean not null;

      @Common.Label                     : 'Post to Insp. Stock'
      @Common.Heading                   : 'I'
      @Common.QuickInfo                 : 'Post to Inspection Stock'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QINSMK'
      HasPostToInspectionStock       : Boolean not null;

      @Common.Label                     : 'Automatic UD'
      @Common.Heading                   : 'Auto UD'
      @Common.QuickInfo                 : 'Automatic Usage Decision Planned'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QAUTO_VE'
      InspLotIsAutomUsgeDcsnPossible : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Sampling Procedure'
      @Common.Heading                   : 'Prc'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QSTPRVER'
      SamplingProcedure              : String(8) not null;

      @Common.SAPObjectNodeTypeReference: 'InspectionLotDynamicRule'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Modification Rule'
      @Common.Heading                   : 'DynR'
      @Common.QuickInfo                 : 'Dynamic Modification Rule'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QDYNREGEL'
      InspLotDynamicRule             : String(3) not null;

      @Common.Label                     : 'Insp. percentage'
      @Common.Heading                   : 'Ins%'
      @Common.QuickInfo                 : 'Inspection Percentage'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QSPROZ'
      InspLotSampleQuantityInPercent : Decimal (precision : 3) not null;

      @Common.Label                     : '100% Inspection'
      @Common.Heading                   : '100%'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QHPZ'
      InspectionLotIsFullInspection  : Boolean not null;

      @Common.Label                     : 'Skips Allowed'
      @Common.Heading                   : 'Skip'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QDYN'
      InspLotSkipIsAllowed           : Boolean not null;

      @Common.Label                     : 'Manual Sample Entry'
      @Common.Heading                   : 'MSE'
      @Common.QuickInfo                 : 'Enter Sample Manually'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QMPB'
      InspLotHasManualSampleSize     : Boolean not null;

      @Common.Label                     : 'Manual Sample Calc.'
      @Common.Heading                   : 'MTC'
      @Common.QuickInfo                 : 'Trigger Sample Calculation Manually'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QMST'
      InspLotIsSmplCalcMnlTriggered  : Boolean not null;

      @Common.Label                     : 'Serial Numbers Poss.'
      @Common.Heading                   : 'SerN'
      @Common.QuickInfo                 : 'Serial Numbers Possible for Inspection Lot'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QEINZ'
      InspLotIsSerialNmbrPossible    : Boolean not null;

      @Common.Label                     : 'Avg. Insp. Duration'
      @Common.Heading                   : 'AInD'
      @Common.QuickInfo                 : 'Average Inspection Duration'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QMPDAU'
      InspLotDurationInDays          : Decimal (precision : 3) not null;

      @Common.SAPObjectNodeTypeReference: 'InspectionLotSummaryControl'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Control Lot Creation'
      @Common.Heading                   : 'LtCtl'
      @Common.QuickInfo                 : 'Control of Inspection Lot Creation (Lot Summary)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=Q1WELOS'
      InspLotSummaryControl          : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Q-Score Procedure'
      @Common.Heading                   : 'QSc'
      @Common.QuickInfo                 : 'Procedure for Calculating Quality Score'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QKZVERF'
      InspQualityScoreProcedure      : String(2) not null;

      @Common.Label                     : 'Allowed Scrap Share'
      @Common.Heading                   : 'Scrap%'
      @Common.QuickInfo                 : 'Allowed Share of Scrap (Percent) in Inspection Lot'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QAUSSCHUSS'
      InspLotAcceptedScrapRatioInPct : Decimal(6, 4) not null;

      @Common.Label                     : 'Individual QM Order'
      @Common.Heading                   : 'InOr'
      @Common.QuickInfo                 : 'Record Appraisal Costs in Individual QM Order'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QKZPRFKOST'
      InspectionLotHasAppraisalCosts : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'QM Order'
      @Common.QuickInfo                 : 'Order Number for Recording Appraisal Costs'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QAUFNR_CO'
      QualityCostCollector           : String(12) not null;

      @Common.Label                     : 'InspType-Matl Active'
      @Common.Heading                   : 'Act'
      @Common.QuickInfo                 : 'Inspection Type - Material Combination Is Active'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QMATAKTIV'
      ProdInspTypeSettingIsActive    : Boolean not null;

      @Common.Label                     : 'Preferred Insp. Type'
      @Common.Heading                   : 'Prf'
      @Common.QuickInfo                 : 'Preferred Inspection Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QAPA'
      InspTypeIsPrfrd                : Boolean not null;

      @Common.Label                     : 'Inspection for HU'
      @Common.Heading                   : 'HU'
      @Common.QuickInfo                 : 'Inspection for Handling Unit'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QAFR'
      InspLotHasHandlingUnit         : Boolean not null;

      @Common.Label                     : 'Multiple Specs'
      @Common.Heading                   : 'Indicator: Multiple Specifications'
      @Common.QuickInfo                 : 'Indicator: Multiple Specifications'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=Q_MS_FLG'
      InspLotHasMultipleSpec         : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'InspLotOfEWMSummaryControl'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Insp. Lot Summary'
      @Common.Heading                   : 'Inspection Lot Summary (Warehouse-Managed Stock)'
      @Common.QuickInfo                 : 'Inspection Lot Summary (Warehouse-Managed Stock)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QLOT_CONTROL_ORIGIN_17'
      InspLotOfEWMSummaryControl     : String(1) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductPlant                  : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant International Trade'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantInternationalTrade {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                     : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                       : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Country/Region of Origin'
      @Common.QuickInfo       : 'Country/Region of Origin of Product'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=CMD_PRD_COUNTRYOFORIGIN'
      CountryOfOrigin             : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Region of Origin'
      @Common.Heading         : 'ROr'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=REGIONOFORIGIN'
      RegionOfOrigin              : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Control Code'
      @Common.QuickInfo       : 'Control code for consumption taxes in foreign trade'
      ConsumptionTaxCtrlCode      : String(16) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Intrastat Group'
      @Common.Heading         : 'IntraGrp'
      @Common.QuickInfo       : 'Material Group for Intrastat'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MTVER'
      ExportAndImportProductGroup : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'CAS number (pharm.)'
      @Common.Heading         : 'CAS no.'
      @Common.QuickInfo       : 'CAS number for pharmaceutical products in foreign trade'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=CASNR'
      ProductCASNumber            : String(15) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'PRODCOM no.'
      @Common.QuickInfo       : 'Production statistics: PRODCOM number for foreign trade'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=GPNUM'
      ProdIntlTradeClassification : String(9) not null;
      SAP__Messages               : many PRODUCT_0002.SAP__Message not null;
      _Product                    : Association to one PRODUCT_0002.Product {};
      _ProductPlant               : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant MRP'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['MRPArea']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : ReorderThresholdQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : LotSizeRoundingQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MinimumLotSizeQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumLotSizeQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumStockQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : SafetyStockQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : FixedLotSizeQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : LotSizeIndependentCosts,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductPlantMRP {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Material'
      @Common.QuickInfo                 : 'Material Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                       : String(18) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Area'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BERID'
  key MRPArea                       : String(10) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Area Plant'
      @Common.Heading                   : 'Plnt'
      @Common.QuickInfo                 : 'MRP Area: Plant'
  key Plant                         : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Type'
      @Common.Heading                   : 'Typ'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISMM'
      MRPType                       : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Controller'
      @Common.Heading                   : 'MRPCn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISPO'
      MRPResponsible                : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Group'
      @Common.Heading                   : 'MRP'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISGR'
      MRPGroup                      : String(4) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Reorder Point'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MINBE'
      ReorderThresholdQuantity      : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Planning Cycle'
      @Common.Heading                   : 'PCy'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LFRHY'
      PlanAndOrderDayDetermination  : String(3) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Planning time fence'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FXHOR'
      PlanningTimeFence             : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Lot Sizing Procedure'
      @Common.QuickInfo                 : 'Lot Sizing Procedure in Materials Planning'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISLS'
      LotSizingProcedure            : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Rounding Profile'
      @Common.Heading                   : 'R. Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RDPRF'
      RoundingProfile               : String(4) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Rounding value'
      @Common.Heading                   : 'Rounding val.'
      @Common.QuickInfo                 : 'Rounding value for purchase order quantity'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTRF'
      LotSizeRoundingQuantity       : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Minimum Lot Size'
      @Common.Heading                   : 'Min. Lot Sze'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTMI'
      MinimumLotSizeQuantity        : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Maximum Lot Size'
      @Common.Heading                   : 'Max. Lot Size'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTMA'
      MaximumLotSizeQuantity        : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Maximum Stock Level'
      @Common.Heading                   : 'Max. Level'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MABST'
      MaximumStockQuantity          : Decimal(13, 3) not null;

      @Common.Label                     : 'Assembly scrap (%)'
      @Common.Heading                   : 'A.scrap'
      @Common.QuickInfo                 : 'Assembly scrap in percent'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AUSSS'
      AssemblyScrapPercent          : Decimal(5, 2) not null;

      @Common.SAPObjectNodeTypeReference: 'ProcurementSubType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Special Procurement'
      @Common.Heading                   : 'Special Procurement Type'
      @Common.QuickInfo                 : 'Special Procurement Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SOBSL'
      ProcurementSubType            : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage Location'
      @Common.Heading                   : 'Production Storage Location'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LGPRO'
      ProductionInvtryManagedLoc    : String(4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage Location'
      @Common.Heading                   : 'Storage Location for External Procurement'
      @Common.QuickInfo                 : 'Default Storage Location for External Procurement'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LGFSB'
      DfltStorageLocationExtProcmt  : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPPlanningCalendar'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Planning Calendar'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MRPPP'
      MRPPlanningCalendar           : String(3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Safety Stock'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=EISBE'
      SafetyStockQuantity           : Decimal(13, 3) not null;

      @Common.SAPObjectNodeTypeReference: 'MatlStkRangeOfCoverageProfile'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Coverage Profile'
      @Common.Heading                   : 'Range-of-Coverage Profile'
      @Common.QuickInfo                 : 'Range-of-Coverage Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RWPRO'
      RangeOfCvrgPrflCode           : String(3) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Safety Time'
      @Common.Heading                   : 'SafetyTime'
      @Common.QuickInfo                 : 'Safety Time (in Workdays)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SHZET'
      SafetySupplyDurationInDays    : String(2) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Fixed lot size'
      @Common.Heading                   : 'Fix. lot size'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTFE'
      FixedLotSizeQuantity          : Decimal(13, 3) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'LS-Independent Costs'
      @Common.Heading                   : 'LSI Costs'
      @Common.QuickInfo                 : 'Lot-Size-Independent Costs'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LOSFX'
      LotSizeIndependentCosts       : Decimal (precision : 11) not null;

      @Common.SAPObjectNodeTypeReference: 'StorageCostsPercentageCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage Costs Code'
      @Common.Heading                   : 'Key'
      @Common.QuickInfo                 : 'Storage Costs Percentage Code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LAGPR'
      StorageCostsPercentageCode    : String(1) not null;

      @Common.Label                     : 'Service level (%)'
      @Common.Heading                   : 'SLev'
      @Common.QuickInfo                 : 'Service level'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LGRAD'
      ProductServiceLevelInPercent  : Decimal(3, 1) not null;

      @Common.Label                     : 'Deletion Indicator'
      @Common.Heading                   : 'D'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LVORM'
      IsMarkedForDeletion           : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'MatlStkSafetyTimePeriodProfile'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Time Profile'
      @Common.Heading                   : 'Safety Time Period Profile'
      @Common.QuickInfo                 : 'Period Profile for Safety Time'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SHPRO'
      SafetyTimePeriodProfile       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Relevant'
      @Common.Heading                   : 'MRP-Relevant Dependent Requirements'
      @Common.QuickInfo                 : 'MRP relevancy for dependent requirements'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AHDIS'
      DependentRqmtMRPRelevance     : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Safety Time Ind'
      @Common.Heading                   : 'Safety Time Indicator'
      @Common.QuickInfo                 : 'Safety Time Indicator (with or Without Safety Time)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SHFLG'
      ProductSafetyTimeMRPRelevance : String(1) not null;

      @Common.Label                     : 'Planned Deliv. Time'
      @Common.Heading                   : 'PDT'
      @Common.QuickInfo                 : 'Planned Delivery Time in Days'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PLIFZ'
      PlannedDeliveryDurationInDays : Decimal (precision : 3) not null;

      @Common.Label                     : 'Consider PlDelTime'
      @Common.QuickInfo                 : 'Consider Planned Delivery Time of the MRP Area'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ISPLANNEDDELIVERYTIME'
      IsPlannedDeliveryTime         : Boolean not null;

      @Common.Label                     : 'Takt time'
      @Common.Heading                   : 'TT'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=TAKZT'
      RqmtQtyRcptTaktTmeInWrkgDays  : Decimal (precision : 3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductSafetyStockMethod'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Safety Stock Method'
      @Common.QuickInfo                 : 'MRP Safety Stock Method'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MRP_SSTOCK_METHOD'
      MRPSafetyStockMethod          : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Currency'
      @Common.Heading                   : 'Crcy'
      @Common.QuickInfo                 : 'Currency Key'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WAERS'
      Currency                      : String(3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                      : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                   : String(3) not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
      _ProductPlant                 : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant MRP - Text'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.FilterRestrictions.Filterable                      : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [{
  Property          : ProductPlantMRPText,
  AllowedExpressions: 'SearchExpression'
}]
@Capabilities.SortRestrictions.NonSortableProperties             : ['ProductPlantMRPText']
@Capabilities.InsertRestrictions.RequiredProperties              : ['Language']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'TextObjectType',
  'Language'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantMRPText {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Material'
      @Common.QuickInfo       : 'Material Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                        : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Text ID'
      @Common.Heading         : 'ID'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TDID'
  key TextObjectType                 : String(4) not null;

      @Core.Immutable         : true
      @Common.Label           : 'Language Key'
      @Common.Heading         : 'Language'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SPRAS'
  key Language                       : String(2) not null;

      @Common.Label: 'Text Content'
      ProductPlantMRPText            : String not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Creation timestamp of Product Long texts'
      ProdLongTxtCreationDateTime    : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Created By'
      @Common.QuickInfo       : 'Name of Person Responsible for Creating the Object'
      CreatedByUser                  : String(12) not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Last Change timestamp of Product Long texts'
      ProdLongTxtLastChangedDateTime : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Changed By'
      @Common.QuickInfo       : 'Name of Person Who Changed Object'
      LastChangedByUser              : String(12) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductPlant                  : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Planning'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantPlanning {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Product group'
      @Common.QuickInfo       : 'Name of the product group'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRGRP'
      PlanningMaterial               : String(18) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
      PlanningPlant                  : String(4) not null;

      @Common.Label           : 'Cnversion'
      @Common.Heading         : 'Conversion'
      @Common.QuickInfo       : 'Conversion factor: quantities'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=UMREFF'
      ProdPlntPlngMatlConversionFctr : Double not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductPlant                  : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Procurement'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantProcurement {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Common.Label           : 'Automatic PO'
      @Common.Heading         : 'Aut'
      @Common.QuickInfo       : 'Indicator: "automatic purchase order allowed"'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=KAUTB'
      IsAutoPurOrdCreationAllowed    : Boolean not null;

      @Common.Label           : 'Source list'
      @Common.QuickInfo       : 'Indicator: Source list requirement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=KORDB'
      IsSourceListRequired           : Boolean not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'JIT Delivery'
      @Common.Heading         : 'JIT Delivery Schedules'
      @Common.QuickInfo       : 'JIT Delivery Schedules'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=FABKZ'
      JustInTimeDeliveryScheduleCode : String(1) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Purchasing Group'
      @Common.Heading         : 'PGr'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=EKGRP'
      PurchasingGroup                : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Source of supply'
      @Common.Heading         : 'S'
      @Common.QuickInfo       : 'Source of Supply'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=BWSCL'
      SourceOfSupplyCategory         : String(1) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductPlant                  : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Purchase Tax'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['DepartureCountry']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantPurchaseTax {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                       : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                         : String(4) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Departure Ctry/Reg.'
      @Common.Heading         : 'DeCR'
      @Common.QuickInfo       : 'Departure Country/Region (from which the goods are sent)'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ALAND'
  key DepartureCountry              : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Tax ind. f. material'
      @Common.Heading         : 'Material'
      @Common.QuickInfo       : 'Tax indicator for material (Purchasing)'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TAXIM1'
      ProdPurchaseTaxClassification : String(1) not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
      _ProductPlant                 : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Quality Management'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantQualityManagement {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'QM Control Key'
      @Common.Heading         : 'Ctrl Key'
      @Common.QuickInfo       : 'Control Key for Quality Management in Procurement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=QSSPUR'
      ProdQltyManagementControlKey   : String(8) not null;

      @Common.Label           : 'Post to insp. stock'
      @Common.Heading         : 'I'
      @Common.QuickInfo       : 'Has Post to Inspection Stock'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=HASPOSTTOINSPECTIONSTOCK'
      HasPostToInspectionStock       : Boolean not null;

      @Common.Label           : 'Documentation reqd'
      @Common.Heading         : 'D'
      @Common.QuickInfo       : 'Documentation required indicator'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=KZDKZ'
      InspLotDocumentationIsRequired : Boolean not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Target QM System'
      @Common.QuickInfo       : 'Target QM System for Supplier'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=QSSYS_SOLL'
      QualityMgmtSystemForSupplier   : String(4) not null;

      @Common.Label           : 'Inspection Interval'
      @Common.Heading         : 'InspIn'
      @Common.QuickInfo       : 'Interval Until Next Recurring Inspection'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRFRQ'
      RecrrgInspIntervalTimeInDays   : Decimal (precision : 5) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Certificate Type'
      @Common.Heading         : 'CTyp'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=QZGTYP'
      ProductQualityCertificateType  : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'QM Material Auth.'
      @Common.Heading         : 'QMatAu'
      @Common.QuickInfo       : 'Material Authorization Group for Activities in QM'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=QMATAUTH'
      ProdQualityAuthorizationGroup  : String(6) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductPlant                  : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Sales'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : CapPlanningQuantityInBaseUoM,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductPlantSales {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Plant'
      @Common.Heading                   : 'Plnt'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'LoadingGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Loading Group'
      @Common.Heading                   : 'LGrp'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LADGR'
      LoadingGroup                   : String(4) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Base quantity'
      @Common.QuickInfo                 : 'Base quantity for capacity planning in shipping'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VBAMG'
      CapPlanningQuantityInBaseUoM   : Decimal(13, 3) not null;

      @Common.Label                     : 'Processing time'
      @Common.Heading                   : 'PrTime'
      @Common.QuickInfo                 : 'Shipping processing time'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VBEAZ'
      ProdShipgProcgDurationInDays   : Decimal(5, 2) not null;

      @Common.Label                     : 'Setup time'
      @Common.Heading                   : 'Setup'
      @Common.QuickInfo                 : 'Shipping setup time'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VRVEZ'
      WrkCentersShipgSetupTimeInDays : Decimal(5, 2) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductReplacementPartType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Replacement Part'
      @Common.Heading                   : 'R'
      @Common.QuickInfo                 : 'Replacement part'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ATPKZ'
      ReplacementPartType            : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Availability check'
      @Common.Heading                   : 'Av'
      @Common.QuickInfo                 : 'Checking Group for Availability Check'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MTVFP'
      AvailabilityCheckType          : String(2) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                    : String(3) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductPlant                  : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Storage'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : MaximumStoragePeriod,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProdMaximumStoragePeriodUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumStoragePeriodISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductPlantStorage {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                       : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                         : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'CC Phys. Inv. Ind.'
      @Common.Heading         : 'CC'
      @Common.QuickInfo       : 'Physical Inventory Indicator for Cycle Counting'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ABCIN'
      PhysInventoryForCycleCounting : String(1) not null;

      @Measures.Unit          : ProdMaximumStoragePeriodUnit
      @Measures.UNECEUnit     : MaximumStoragePeriodISOUnit
      @Common.Label           : 'Max. Storage Period'
      @Common.Heading         : 'Stor.'
      @Common.QuickInfo       : 'Maximum Storage Period'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MAXLZ'
      MaximumStoragePeriod          : Decimal (precision : 5) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Time unit'
      @Common.Heading         : 'TUn'
      @Common.QuickInfo       : 'Unit for maximum storage period'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=LZEIH'
      ProdMaximumStoragePeriodUnit  : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Time unit ISO'
      @Common.Heading         : 'TmI'
      @Common.QuickInfo       : 'Unit for the maximum storage period in ISO code'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=LZEIH_ISO'
      MaximumStoragePeriodISOUnit   : String(3) not null;

      @Common.Label           : 'CC indicator fixed'
      @Common.Heading         : 'CC fix'
      @Common.QuickInfo       : 'CC indicator is fixed'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=CCFIX'
      CycleCountingIndicatorIsFixed : Boolean not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
      _ProductPlant                 : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Storage Location'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['StorageLocation']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductPlantStorageLocation {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product             : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Plant'
      @Common.Heading         : 'Plnt'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant               : String(4) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Storage Location'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=LGORT_D'
  key StorageLocation     : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Storage Bin'
      @Common.Heading         : 'Bin'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=LGPBE'
      WarehouseStorageBin : String(10) not null;

      @Common.Label           : 'DF stor. loc. level'
      @Common.Heading         : 'SL'
      @Common.QuickInfo       : 'Flag Material for Deletion at Storage Location Level'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=LVOLG'
      IsMarkedForDeletion : Boolean not null;
      SAP__Messages       : many PRODUCT_0002.SAP__Message not null;
      _Product            : Association to one PRODUCT_0002.Product {};
      _ProductPlant       : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Supply Planning'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : FixedLotSizeQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumLotSizeQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MinimumLotSizeQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : LotSizeRoundingQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : SafetyStockQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MinimumSafetyStockQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MaximumStockQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ReorderThresholdQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : LotSizeIndependentCosts,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductPlantSupplyPlanning {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Plant'
      @Common.Heading                   : 'Plnt'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                          : String(4) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Fixed lot size'
      @Common.Heading                   : 'Fix. lot size'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTFE'
      FixedLotSizeQuantity           : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Maximum Lot Size'
      @Common.Heading                   : 'Max. Lot Size'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTMA'
      MaximumLotSizeQuantity         : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Minimum Lot Size'
      @Common.Heading                   : 'Min. Lot Sze'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTMI'
      MinimumLotSizeQuantity         : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Rounding value'
      @Common.Heading                   : 'Rounding val.'
      @Common.QuickInfo                 : 'Rounding value for purchase order quantity'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BSTRF'
      LotSizeRoundingQuantity        : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Lot Sizing Procedure'
      @Common.QuickInfo                 : 'Lot Sizing Procedure in Materials Planning'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISLS'
      LotSizingProcedure             : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Type'
      @Common.Heading                   : 'Typ'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISMM'
      MRPType                        : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPController'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Controller'
      @Common.Heading                   : 'MRPCn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISPO'
      MRPResponsible                 : String(3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Safety Stock'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=EISBE'
      SafetyStockQuantity            : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Min. Saf. Stock'
      @Common.Heading                   : 'Minimum Safety Stock'
      @Common.QuickInfo                 : 'Minimum Safety Stock'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=EISLO'
      MinimumSafetyStockQuantity     : Decimal(13, 3) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Planning time fence'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FXHOR'
      PlanningTimeFence              : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProdConsumptionValueCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'ABC Indicator'
      @Common.Heading                   : 'ABC'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MAABC'
      ConsumptionValueCategory       : String(1) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Maximum Stock Level'
      @Common.Heading                   : 'Max. Level'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MABST'
      MaximumStockQuantity           : Decimal(13, 3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Reorder Point'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MINBE'
      ReorderThresholdQuantity       : Decimal(13, 3) not null;

      @Common.Label                     : 'Planned Deliv. Time'
      @Common.Heading                   : 'PDT'
      @Common.QuickInfo                 : 'Planned Delivery Time in Days'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PLIFZ'
      PlannedDeliveryDurationInDays  : Decimal (precision : 3) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Safety Time'
      @Common.Heading                   : 'SafetyTime'
      @Common.QuickInfo                 : 'Safety Time (in Workdays)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SHZET'
      SafetySupplyDurationInDays     : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Strategy Group'
      @Common.Heading                   : 'SG'
      @Common.QuickInfo                 : 'Planning Strategy Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=STRGR'
      PlanningStrategyGroup          : String(2) not null;

      @Common.Label                     : 'Tot. repl. lead time'
      @Common.Heading                   : 'TRLT'
      @Common.QuickInfo                 : 'Total replenishment lead time (in workdays)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WZEIT'
      TotalReplenishmentLeadTime     : Decimal (precision : 3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProcurementType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Procurement Type'
      @Common.Heading                   : 'ProcType'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BESKZ'
      ProcurementType                : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'ProcurementSubType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Special Procurement'
      @Common.Heading                   : 'Special Procurement Type'
      @Common.QuickInfo                 : 'Special Procurement Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SOBSL'
      ProcurementSubType             : String(2) not null;

      @Common.Label                     : 'Assembly scrap (%)'
      @Common.Heading                   : 'A.scrap'
      @Common.QuickInfo                 : 'Assembly scrap in percent'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AUSSS'
      AssemblyScrapPercent           : Decimal(5, 2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Availability check'
      @Common.Heading                   : 'Av'
      @Common.QuickInfo                 : 'Checking Group for Availability Check'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MTVFP'
      AvailabilityCheckType          : String(2) not null;

      @Common.Label                     : 'GR processing time'
      @Common.Heading                   : 'GRT'
      @Common.QuickInfo                 : 'Goods receipt processing time in days'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WEBAZ'
      GoodsReceiptDuration           : Decimal (precision : 3) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPPlanningCalendar'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Planning Cycle'
      @Common.Heading                   : 'PCy'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LFRHY'
      PlanAndOrderDayDetermination   : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Rounding Profile'
      @Common.Heading                   : 'R. Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RDPRF'
      RoundingProfile                : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'StorageLocation'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage Location'
      @Common.Heading                   : 'Storage Location for External Procurement'
      @Common.QuickInfo                 : 'Default Storage Location for External Procurement'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LGFSB'
      DfltStorageLocationExtProcmt   : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Group'
      @Common.Heading                   : 'MRP'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DISGR'
      MRPGroup                       : String(4) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'LS-Independent Costs'
      @Common.Heading                   : 'LSI Costs'
      @Common.QuickInfo                 : 'Lot-Size-Independent Costs'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LOSFX'
      LotSizeIndependentCosts        : Decimal (precision : 11) not null;

      @Common.Label                     : 'Takt time'
      @Common.Heading                   : 'TT'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=TAKZT'
      RqmtQtyRcptTaktTmeInWrkgDays   : Decimal (precision : 3) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPPlanningCalendar'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Planning Calendar'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MRPPP'
      MRPPlanningCalendar            : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'MatlStkRangeOfCoverageProfile'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Coverage Profile'
      @Common.Heading                   : 'Range-of-Coverage Profile'
      @Common.QuickInfo                 : 'Range-of-Coverage Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RWPRO'
      RangeOfCvrgPrflCode            : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Safety Time Ind'
      @Common.Heading                   : 'Safety Time Indicator'
      @Common.QuickInfo                 : 'Safety Time Indicator (with or Without Safety Time)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SHFLG'
      ProductSafetyTimeMRPRelevance  : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'MatlStkSafetyTimePeriodProfile'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Time Profile'
      @Common.Heading                   : 'Safety Time Period Profile'
      @Common.QuickInfo                 : 'Period Profile for Safety Time'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SHPRO'
      SafetyTimePeriodProfile        : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'MRP Relevant'
      @Common.Heading                   : 'MRP-Relevant Dependent Requirements'
      @Common.QuickInfo                 : 'MRP relevancy for dependent requirements'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AHDIS'
      DependentRqmtMRPRelevance      : String(1) not null;

      @Common.Label                     : 'Service level (%)'
      @Common.Heading                   : 'SLev'
      @Common.QuickInfo                 : 'Service level'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LGRAD'
      ProductServiceLevelInPercent   : Decimal(3, 1) not null;

      @Common.Label                     : 'In-house production'
      @Common.Heading                   : 'IPT'
      @Common.QuickInfo                 : 'In-house production time'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZEIT'
      ProdInhProdnDurationInWorkDays : Decimal (precision : 3) not null;

      @Common.SAPObjectNodeTypeReference: 'MRPAvailabilityType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Mixed MRP'
      @Common.Heading                   : 'Mx'
      @Common.QuickInfo                 : 'Mixed MRP indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MISKZ'
      MRPAvailabilityType            : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Cross-Project'
      @Common.Heading                   : 'Cross-Project Material'
      @Common.QuickInfo                 : 'Indicator for Cross-Project Material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZPSP'
      CrossProjectProduct            : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'StorageCostsPercentageCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage Costs Code'
      @Common.Heading                   : 'Key'
      @Common.QuickInfo                 : 'Storage Costs Percentage Code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LAGPR'
      StorageCostsPercentageCode     : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Follow-Up Material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=NFMAT'
      FollowUpProduct                : String(18) not null;

      @Common.Label                     : 'Repetitive Manufacturing Enabled'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CMD_PRD_REM_ENABLED'
      RepetitiveManufacturingIsAllwd : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'ProdDependentRequirementsType'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Indiv./ Coll.'
      @Common.Heading                   : 'Individual/ Collective Requirements'
      @Common.QuickInfo                 : 'Indicator for Individual and Collective Requirements'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SBDKZ'
      DependentRequirementsType      : String(1) not null;

      @Common.Label                     : 'Bulk Material'
      @Common.Heading                   : 'Bulk'
      @Common.QuickInfo                 : 'Indicator: Bulk Material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SCHGT'
      ProductIsBulkComponent         : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'RepetitiveManufacturingProfile'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Repetitive Manufacturing Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CMD_PRD_REM_PROFILE'
      RepetitiveManufacturingProfile : String(4) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Backward Consumption Period'
      @Common.QuickInfo                 : 'Consumption Period: Backward'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BACKWARDCNSMPNPERIODINWORKDAYS'
      BackwardCnsmpnPeriodInWorkDays : String(3) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Forward Consumption Period'
      @Common.QuickInfo                 : 'Consumption period: Forward'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FWDCONSUMPTIONPERIODINWORKDAYS'
      FwdConsumptionPeriodInWorkDays : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProdRqmtsConsumptionMode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Consumption mode'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VRMOD'
      ProdRqmtsConsumptionMode       : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Splitting Indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AUFTL'
      ProdFcstRequirementsSplitCode  : String(1) not null;

      @Common.Label                     : 'Effective-Out Date'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=AUSDT'
      EffectiveOutDate               : Date;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Scheduling Float Profile'
      @Common.QuickInfo                 : 'Scheduling Profile for Floats'
      SchedulingFloatProfile         : String(3) not null;

      @Common.Label                     : 'Component Scrap (%)'
      @Common.Heading                   : 'C.scrap'
      @Common.QuickInfo                 : 'Component Scrap in Percent'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KAUSF'
      ComponentScrapInPercent        : Decimal(5, 2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Discontinuation ind.'
      @Common.Heading                   : 'D'
      @Common.QuickInfo                 : 'Discontinuation indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZAUS'
      ProductDiscontinuationCode     : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'ProdRequirementsGroupingCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Requirements group'
      @Common.Heading                   : 'G'
      @Common.QuickInfo                 : 'Indicator for Requirements Grouping'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZBED'
      ProductRequirementsGrouping    : String(1) not null;

      @Common.SAPObjectNodeTypeReference: 'StorageLocation'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage Location'
      @Common.Heading                   : 'Production Storage Location'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LGPRO'
      ProductionInvtryManagedLoc     : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductComponentBackflushCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Backflush'
      @Common.Heading                   : 'B'
      @Common.QuickInfo                 : 'Indicator: Backflush'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RGEKM'
      ProductComponentBackflushCode  : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Proposed Supply Area'
      @Common.QuickInfo                 : 'Proposed Supply Area in Material Master Record'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VSPVB'
      ProposedProductSupplyArea      : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductSafetyStockMethod'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Safety Stock Method'
      @Common.QuickInfo                 : 'MRP Safety Stock Method'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MRP_SSTOCK_METHOD'
      MRPSafetyStockMethod           : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'JIT Production Confirmation Profile'
      JITProdnConfProfile            : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Currency'
      @Common.Heading                   : 'Crcy'
      @Common.QuickInfo                 : 'Currency Key'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WAERS'
      Currency                       : String(3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Planning Calendar'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MRPPP'
      ProdnPlngAndControlCalendar    : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                    : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Consign.Control'
      @Common.Heading                   : 'Consignment Control'
      @Common.QuickInfo                 : 'Consignment Control'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WRF_CONS_PROCG'
      ConsignmentControl             : String(1) not null;

      @Common.Label: 'Availability Check Horizon'
      ATPCheckHorizonInDays          : Decimal (precision : 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Calendar for Validating Check Horizon'
      @Common.Heading                   : 'Calendar for Validating Availability Check Horizon'
      @Common.QuickInfo                 : 'Calendar for Validating Availability Check Horizon'
      ATPCheckHorizonFactoryCalendar : String(2) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductPlant                  : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Plant Work Scheduling'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductPlant'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : ProductBaseQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductPlantWorkScheduling {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                       : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Plant'
      @Common.Heading                   : 'Plnt'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WERKS_D'
  key Plant                         : String(4) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Base quantity'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BASMG'
      ProductBaseQuantity           : Decimal(13, 3) not null;

      @Common.Label                     : 'Unltd Overdelivery'
      @Common.Heading                   : 'Unl'
      @Common.QuickInfo                 : 'Indicator: Unlimited Overdelivery Allowed'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=UEETK'
      UnlimitedOverDelivIsAllowed   : Boolean not null;

      @Common.Label                     : 'Overdelivery Toler.'
      @Common.Heading                   : 'OTol'
      @Common.QuickInfo                 : 'Overdelivery Tolerance Limit'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=UEETO'
      OverDeliveryTolerancePercent  : Decimal(3, 1) not null;

      @Common.Label                     : 'Underdelivery Toler.'
      @Common.Heading                   : 'UTol'
      @Common.QuickInfo                 : 'Underdelivery Tolerance Limit'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=UNETO'
      UnderDeliveryTolerancePercent : Decimal(3, 1) not null;

      @Common.SAPObjectNodeTypeReference: 'StorageLocation'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage Location'
      @Common.Heading                   : 'Production Storage Location'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LGPRO'
      ProductionInvtryManagedLoc    : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductionOrderBatchCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Batch entry'
      @Common.Heading                   : 'Bch'
      @Common.QuickInfo                 : 'Determination of batch entry in the production/process order'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZECH'
      ProductionOrderBatchCode      : String(1) not null;

      @Common.Label                     : 'Withdr.from prod.bin'
      @Common.Heading                   : 'PBn'
      @Common.QuickInfo                 : 'Indicator: withdrawal of stock from production bin'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KZPRO'
      ProdIsWithdrawnFrmProdnBin    : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Material Grouping'
      @Common.QuickInfo                 : 'Group of Materials for Transition Matrix'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MATNRGROUP'
      TransitionMatrixProductsGroup : String(20) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Change overall prof.'
      @Common.QuickInfo                 : 'Overall profile for order change management'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=OCM_GPROFILE'
      OrderChangeManagementProfile  : String(6) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductComponentBackflushCode'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Backflush'
      @Common.Heading                   : 'B'
      @Common.QuickInfo                 : 'Indicator: Backflush'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RGEKM'
      ProductComponentBackflushCode : String(1) not null;

      @Common.Label                     : 'Setup time'
      @Common.Heading                   : 'SetupT'
      @Common.QuickInfo                 : 'Setup and teardown time'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RUEZT'
      SetupAndTeardownTime          : Decimal(5, 2) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductionSchedulingProfile'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Production Scheduling Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTIONSCHEDULINGPROFILE'
      ProductionSchedulingProfile   : String(6) not null;

      @Common.Label                     : 'Interoperation'
      @Common.Heading                   : 'Interop'
      @Common.QuickInfo                 : 'Interoperation time'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=TRANZ'
      TransitionTime                : Decimal(5, 2) not null;

      @Common.Label                     : 'Processing time'
      @Common.Heading                   : 'PrTime'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BEARZ'
      ProcessingTimeInDays          : Decimal(5, 2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Prodn Supervisor'
      @Common.Heading                   : 'ProdS'
      @Common.QuickInfo                 : 'Production Supervisor'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FEVOR'
      ProductionSupervisor          : String(3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
      ProductProductionQuantityUnit : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Prod. unit (ISO)'
      @Common.Heading                   : 'PUnI'
      @Common.QuickInfo                 : 'Production Unit in ISO Code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FRTME_ISO'
      ProdProductionQuantityISOUnit : String(3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                      : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                   : String(3) not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
      _ProductPlant                 : Association to one PRODUCT_0002.ProductPlant {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Procurement'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductProcurement {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                      : String(18) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Base Unit of Measure'
      @Common.Heading         : 'BUn'
      @Common.QuickInfo       : 'Base Unit of Measure - No Conversion Routine'
      PurchaseOrderQuantityUnit    : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Order unit in ISO'
      @Common.Heading         : 'OUI'
      @Common.QuickInfo       : 'Order unit in ISO code'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=BSTME_ISO'
      PurchaseOrderQuantityISOUnit : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Var. Order Unit'
      @Common.Heading         : 'V'
      @Common.QuickInfo       : 'Variable Purchase Order Unit Active'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VABME'
      VarblPurOrdUnitStatus        : String(1) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Purchasing value key'
      @Common.Heading         : 'PV key'
      @Common.QuickInfo       : 'Purchasing Value Key'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=EKWSL'
      PurchasingAcknProfile        : String(4) not null;
      SAP__Messages                : many PRODUCT_0002.SAP__Message not null;
      _Product                     : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Quality Management'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductQualityManagement {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                  : String(18) not null;

      @Common.Label           : 'QM in Procur. Active'
      @Common.Heading         : 'QM'
      @Common.QuickInfo       : 'QM in Procurement Is Active'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=QMPUR'
      QltyMgmtInProcmtIsActive : Boolean not null;
      SAP__Messages            : many PRODUCT_0002.SAP__Message not null;
      _Product                 : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Sales'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : AllowedPackagingWeightQty,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : AllowedPackagingWeightQtyUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : AllwdPackagingWeightQtyISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : AllowedPackagingVolumeQty,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : AllowedPackagingVolumeQtyUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : AllwdPackagingVolumeQtyISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductSales {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Product'
      @Common.QuickInfo       : 'Product Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'X-DChain Status'
      @Common.Heading         : 'Cross-Distribution-Chain Material Status'
      @Common.QuickInfo       : 'Cross-Distribution-Chain Material Status'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MSTAV'
      SalesStatus                    : String(2) not null;

      @Common.Label           : 'Cross-Distr. Chain Product Validity'
      @Common.Heading         : 'Valid from'
      @Common.QuickInfo       : 'Date from which the X-distr.-chain Product status is valid'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SALESSTATUSVALIDITYDATE'
      SalesStatusValidityDate        : Date;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Transportation Group'
      @Common.Heading         : 'TGroup'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TRAGR'
      TransportationGroup            : String(4) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Packaging Material Type'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=PACKAGINGMATERIALTYPE'
      PackagingProductType           : String(4) not null;

      @Measures.Unit          : AllowedPackagingWeightQtyUnit
      @Measures.UNECEUnit     : AllwdPackagingWeightQtyISOUnit
      @Common.Label           : 'Allowed Pkg wt'
      @Common.Heading         : 'AllowedWeight'
      @Common.QuickInfo       : 'Allowed packaging weight'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ERGEW'
      AllowedPackagingWeightQty      : Decimal(13, 3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Allowed Packaging Unit of Weight'
      @Common.Heading         : 'Un.'
      @Common.QuickInfo       : 'Unit of weight (allowed packaging weight)'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ALLOWEDPACKAGINGWEIGHTQTYUNIT'
      AllowedPackagingWeightQtyUnit  : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'ISO Code'
      @Common.Heading         : 'ISO'
      @Common.QuickInfo       : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      AllwdPackagingWeightQtyISOUnit : String(3) not null;

      @Measures.Unit          : AllowedPackagingVolumeQtyUnit
      @Measures.UNECEUnit     : AllwdPackagingVolumeQtyISOUnit
      @Common.Label           : 'Allowed Volume'
      @Common.Heading         : 'Allowed vol.'
      @Common.QuickInfo       : 'Allowed packaging volume'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ERVOL'
      AllowedPackagingVolumeQty      : Decimal(13, 3) not null;

      @Common.IsUnit          : true
      @Common.Label           : 'Allowed Packaging Unit of Volume'
      @Common.Heading         : 'VUn'
      @Common.QuickInfo       : 'Volume unit (allowed packaging volume)'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ALLOWEDPACKAGINGVOLUMEQTYUNIT'
      AllowedPackagingVolumeQtyUnit  : String(3) not null;

      @Common.IsUpperCase     : true
      @Common.Label           : 'ISO Code'
      @Common.Heading         : 'ISO'
      @Common.QuickInfo       : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      AllwdPackagingVolumeQtyISOUnit : String(3) not null;

      @Common.Label           : 'Maximum level'
      @Common.Heading         : 'MxL'
      @Common.QuickInfo       : 'Maximum level (by volume)'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=FUELG'
      MaximumLevelByVolumeInPercent  : Decimal (precision : 3) not null;

      @Common.Label           : 'Excess Weight Tolerance'
      @Common.QuickInfo       : 'Excess Weight Tolerance for Handling unit'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=EXCESSWEIGHTTOLERANCE'
      ExcessWeightToleranceValue     : Decimal(3, 1) not null;

      @Common.Label           : 'Closed'
      @Common.Heading         : 'C'
      @Common.QuickInfo       : 'Packaging Material is Closed Packaging'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=KZGVH'
      PackggProductIsClosedPackaging : Boolean not null;

      @Common.Label           : 'Stackability factor'
      @Common.Heading         : 'StFtr'
      @Common.QuickInfo       : 'Stacking factor'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=STFAK'
      ProductStackingFactor          : Integer not null;

      @Common.Label           : 'Excess Volume Tolerance'
      @Common.QuickInfo       : 'Excess Volume Tolerance of the Handling Unit'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=EXCESSVOLUMETOLERANCE'
      ProdExcessVolumeToleranceValue : Decimal(3, 1) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Sales Delivery'
@Common.Messages                                                 : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties        : [
  {
    NavigationProperty: _ProdSalesDeliverySalesTax,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductSalesDeliveryText,
    InsertRestrictions: {Insertable: true}
  }
]
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : [
  'ProductSalesOrg',
  'ProductDistributionChnl'
]
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'ProductSalesOrg',
  'ProductDistributionChnl'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_ProdSalesDeliverySalesTax',
  '_Product',
  '_ProductSalesDeliveryText'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : MinimumOrderQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : DeliveryNoteProcMinDelivQty,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : DeliveryQuantityUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : DeliveryQuantityISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : DeliveryQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductSalesDelivery {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Sales Organization'
      @Common.Heading                   : 'SOrg.'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VKORG'
  key ProductSalesOrg                : String(4) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Distribution Channel'
      @Common.Heading                   : 'DChl'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VTWEG'
  key ProductDistributionChnl        : String(2) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Minimum order qty'
      @Common.Heading                   : 'Min.order qty'
      @Common.QuickInfo                 : 'Minimum order quantity in base unit of measure'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MINAU'
      MinimumOrderQuantity           : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Delivering Plant'
      @Common.Heading                   : 'Plnt'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DWERK'
      SupplyingPlant                 : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'MaterialPricingGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Price Group'
      @Common.Heading                   : 'PPG'
      @Common.QuickInfo                 : 'Product Pricing Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRICESPECIFICATIONPRODUCTGROUP'
      PriceSpecificationProductGroup : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Acct Assmt Grp Mat.'
      @Common.Heading                   : 'AAGM'
      @Common.QuickInfo                 : 'Account Assignment Group for Material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=KTGRM'
      AccountDetnProductGroup        : String(2) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Minimum Delivery Qty'
      @Common.Heading                   : 'Min. Dely Qty'
      @Common.QuickInfo                 : 'Minimum Delivery Quantity in Delivery Note Processing'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MINLF'
      DeliveryNoteProcMinDelivQty    : Decimal(13, 3) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductItemCategoryGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Item Category Group'
      @Common.Heading                   : 'ItCGr'
      @Common.QuickInfo                 : 'Item Category Group from Material Master'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MTPOS'
      ItemCategoryGroup              : String(4) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Unit Of Measure'
      @Common.Heading                   : 'Unit'
      @Common.QuickInfo                 : 'Unit Of Measure Of Delivery Unit'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SCHME'
      DeliveryQuantityUnit           : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'ISO Code'
      @Common.Heading                   : 'ISO'
      @Common.QuickInfo                 : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      DeliveryQuantityISOUnit        : String(3) not null;

      @Measures.Unit                    : DeliveryQuantityUnit
      @Measures.UNECEUnit               : DeliveryQuantityISOUnit
      @Common.Label                     : 'Delivery unit'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SCHRT'
      DeliveryQuantity               : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'DChain-spec. status'
      @Common.Heading                   : 'St'
      @Common.QuickInfo                 : 'Distribution-chain-specific material status'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VMSTA'
      ProductSalesStatus             : String(2) not null;

      @Common.Label                     : 'Valid from'
      @Common.Heading                   : 'ValidFrom'
      @Common.QuickInfo                 : 'Date from which distr.-chain-spec. material status is valid'
      ProductSalesStatusValidityDate : Date;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
      SalesMeasureUnit               : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'ISO Code'
      @Common.Heading                   : 'ISO'
      @Common.QuickInfo                 : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      SalesMeasureISOUnit            : String(3) not null;

      @Common.Label                     : 'DF distr. chain lvl'
      @Common.Heading                   : 'DCh'
      @Common.QuickInfo                 : 'Ind.: Flag material for deletion at distribution chain level'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LVOVK'
      IsMarkedForDeletion            : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'AdditionalProductGroup1'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Group 1'
      @Common.Heading                   : 'PG 1'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FIRSTSALESSPECPRODUCTGROUP'
      FirstSalesSpecProductGroup     : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'AdditionalProductGroup2'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Group 2'
      @Common.Heading                   : 'PG 2'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SECONDSALESSPECPRODUCTGROUP'
      SecondSalesSpecProductGroup    : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'AdditionalProductGroup3'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Group 3'
      @Common.Heading                   : 'PG 3'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=THIRDSALESSPECPRODUCTGROUP'
      ThirdSalesSpecProductGroup     : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'AdditionalProductGroup4'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Group 4'
      @Common.Heading                   : 'PG 4'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FOURTHSALESSPECPRODUCTGROUP'
      FourthSalesSpecProductGroup    : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'AdditionalProductGroup5'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Group 5'
      @Common.Heading                   : 'PG 5'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FIFTHSALESSPECPRODUCTGROUP'
      FifthSalesSpecProductGroup     : String(3) not null;

      @Common.SAPObjectNodeTypeReference: 'MaterialStatisticsGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Matl statistics grp'
      @Common.Heading                   : 'Material statistics group'
      @Common.QuickInfo                 : 'Material statistics group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=STGMA'
      LogisticsStatisticsGroup       : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Volume Rebate Group'
      @Common.Heading                   : 'VRG'
      @Common.QuickInfo                 : 'Volume rebate group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BONUS'
      VolumeRebateGroup              : String(2) not null;

      @Common.Label                     : 'Cash Discount'
      @Common.Heading                   : 'CDc'
      @Common.QuickInfo                 : 'Cash Discount Indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SKTOF'
      CashDiscountIsDeductible       : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Rounding Profile'
      @Common.Heading                   : 'R. Profile'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RDPRF'
      RoundingProfile                : String(4) not null;

      @Common.Label                     : 'Sales unit not var.'
      @Common.Heading                   : 'S'
      @Common.QuickInfo                 : 'Variable Sales Unit Not Allowed'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VAVME'
      VariableSalesUnitIsNotAllowed  : Boolean not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Commission Group'
      @Common.Heading                   : 'Com'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PROVG'
      ProductCommissionGroup         : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Pricing Ref. Matl'
      @Common.QuickInfo                 : 'Pricing Reference Material'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PMATN'
      PricingReferenceProduct        : String(18) not null;

      @Common.Label                     : 'Product Attribute 1'
      @Common.QuickInfo                 : 'ID for product attribute 1'
      ProductHasAttributeID01        : Boolean not null;

      @Common.Label                     : 'Product Attribute 2'
      @Common.QuickInfo                 : 'ID for product attribute 2'
      ProductHasAttributeID02        : Boolean not null;

      @Common.Label                     : 'Product Attribute 3'
      @Common.QuickInfo                 : 'ID for product attribute 3'
      ProductHasAttributeID03        : Boolean not null;

      @Common.Label                     : 'Product Attribute 4'
      @Common.QuickInfo                 : 'ID for product attribute 4'
      ProductHasAttributeID04        : Boolean not null;

      @Common.Label                     : 'Product Attribute 5'
      @Common.QuickInfo                 : 'ID for product attribute 5'
      ProductHasAttributeID05        : Boolean not null;

      @Common.Label                     : 'Product Attribute 6'
      @Common.QuickInfo                 : 'ID for product attribute 6'
      ProductHasAttributeID06        : Boolean not null;

      @Common.Label                     : 'Product Attribute 7'
      @Common.QuickInfo                 : 'ID for product attribute 7'
      ProductHasAttributeID07        : Boolean not null;

      @Common.Label                     : 'Product Attribute 8'
      @Common.QuickInfo                 : 'ID for product attribute 8'
      ProductHasAttributeID08        : Boolean not null;

      @Common.Label                     : 'Product Attribute 9'
      @Common.QuickInfo                 : 'ID for product attribute 9'
      ProductHasAttributeID09        : Boolean not null;

      @Common.Label                     : 'Product Attribute 10'
      @Common.QuickInfo                 : 'ID for product attribute 10'
      ProductHasAttributeID10        : Boolean not null;

      @Common.Label                     : 'Rel. Entitlement Gen'
      @Common.QuickInfo                 : 'Relevant for Entitlement Generation'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CMD_PRD_IS_ENTLMNT_RLVT'
      ProdIsEntlmntRlvt              : Boolean not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'ISO Code'
      @Common.Heading                   : 'ISO'
      @Common.QuickInfo                 : 'ISO Code for Unit of Measurement'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ISOCD_UNIT'
      BaseISOUnit                    : String(3) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;

      @Common.Composition: true
      _ProdSalesDeliverySalesTax     : Composition of many PRODUCT_0002.ProdSalesDeliverySalesTax
                                         on _ProdSalesDeliverySalesTax._ProductSalesDelivery = $self;
      _Product                       : Association to one PRODUCT_0002.Product {};

      @Common.Composition: true
      _ProductSalesDeliveryText      : Composition of many PRODUCT_0002.ProductSalesDeliveryText
                                         on _ProductSalesDeliveryText._ProductSalesDelivery = $self;
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Sales Delivery - Text'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.FilterRestrictions.Filterable                      : true
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [{
  Property          : ProductSalesDeliveryText,
  AllowedExpressions: 'SearchExpression'
}]
@Capabilities.SortRestrictions.NonSortableProperties             : ['ProductSalesDeliveryText']
@Capabilities.InsertRestrictions.RequiredProperties              : ['Language']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'TextObjectType',
  'Language'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductSalesDelivery'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductSalesDeliveryText {
      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Material'
      @Common.QuickInfo       : 'Material Number'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                        : String(18) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Sales Organization'
      @Common.Heading         : 'SOrg.'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VKORG'
  key ProductSalesOrg                : String(4) not null;

      @Core.Computed          : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Distribution Channel'
      @Common.Heading         : 'DChl'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=VTWEG'
  key ProductDistributionChnl        : String(2) not null;

      @Core.Immutable         : true
      @Common.IsUpperCase     : true
      @Common.Label           : 'Text ID'
      @Common.Heading         : 'ID'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=TDID'
  key TextObjectType                 : String(4) not null;

      @Core.Immutable         : true
      @Common.Label           : 'Language Key'
      @Common.Heading         : 'Language'
      @Common.DocumentationRef: 'urn:sap-com:documentation:key?=type=DE&id=SPRAS'
  key Language                       : String(2) not null;

      @Common.Label: 'Text Content'
      ProductSalesDeliveryText       : String not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Creation timestamp of Product Long texts'
      ProdLongTxtCreationDateTime    : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Created By'
      @Common.QuickInfo       : 'Name of Person Responsible for Creating the Object'
      CreatedByUser                  : String(12) not null;

      @odata.Precision        : 0
      @odata.Type             : 'Edm.DateTimeOffset'
      @Common.Label           : 'Time Stamp Short'
      @Common.Heading         : 'Short Form of Time Stamp'
      @Common.QuickInfo       : 'Last Change timestamp of Product Long texts'
      ProdLongTxtLastChangedDateTime : DateTime;

      @Common.IsUpperCase     : true
      @Common.Label           : 'Changed By'
      @Common.QuickInfo       : 'Name of Person Who Changed Object'
      LastChangedByUser              : String(12) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};
      _ProductSalesDelivery          : Association to one PRODUCT_0002.ProductSalesDelivery {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Storage'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: ['_Product']
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : HazardousProduct,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : NmbrOfGROrGISlipsToPrintQty,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductStorage {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                       : String(18) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Storage conditions'
      @Common.Heading                   : 'SC'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RAUBE'
      StorageConditions             : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Temp. conditions'
      @Common.Heading                   : 'Temp'
      @Common.QuickInfo                 : 'Temperature conditions indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=TEMPB'
      ProdTemperatureConditionCode  : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Haz. material number'
      @Common.Heading                   : 'Haz. material no.'
      @Common.QuickInfo                 : 'Hazardous material number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=STOFF'
      HazardousProduct              : String(18) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'GR slips quantity'
      @Common.Heading                   : 'Number of GR slips'
      @Common.QuickInfo                 : 'Quantity: Number of GR/GI slips to be printed'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WESCH'
      NmbrOfGROrGISlipsToPrintQty   : Decimal(13, 3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Label type'
      @Common.Heading                   : 'LT'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ETIAR'
      LabelType                     : String(2) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Label form'
      @Common.Heading                   : 'LF'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ETIFO'
      LabelForm                     : String(2) not null;

      @Common.Label                     : 'Min. Rem. Shelf Life'
      @Common.Heading                   : 'RShLi'
      @Common.QuickInfo                 : 'Minimum Remaining Shelf Life'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MHDRZ'
      MinRemainingShelfLife         : Decimal (precision : 4) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Expiration Date'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SLED_BBD'
      ProductExpirationDateType     : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Container reqmts'
      @Common.Heading                   : 'CR'
      @Common.QuickInfo                 : 'Container requirements'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BEHVO'
      StorageBinInstruction         : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ShelfLifeExpirationDatePeriod'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Period Ind. for SLED'
      @Common.Heading                   : 'Per. Ind.'
      @Common.QuickInfo                 : 'Period Indicator for Shelf Life Expiration Date'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=SHELFLIFEEXPIRATIONDATEPERIOD'
      ShelfLifeExpirationDatePeriod : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Rounding rule SLED'
      @Common.Heading                   : 'Round.rule'
      @Common.QuickInfo                 : 'Rounding rule for calculation of SLED'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=RDMHD'
      ShelfLifeExprtnDateRndngRule  : String(1) not null;

      @Common.Label                     : 'Storage percentage'
      @Common.Heading                   : 'Stge%'
      @Common.QuickInfo                 : 'Storage Percentage'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MHDLP'
      TotalShelfLifeStoragePercent  : Decimal (precision : 3) not null;

      @Common.Label                     : 'Total Shelf Life'
      @Common.Heading                   : 'SLife'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MHDHB'
      TotalShelfLife                : Decimal (precision : 4) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                      : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                   : String(3) not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Unit of Measure'
@Common.Messages                                                 : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties        : [{
  NavigationProperty: _ProductUnitOfMeasureEAN,
  InsertRestrictions: {Insertable: true}
}]
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'AlternativeSAPUnit',
  'AlternativeISOUnit'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductUnitOfMeasureEAN'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : AlternativeSAPUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : AlternativeISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : QuantityNumerator,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : QuantityDenominator,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductVolume,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : VolumeUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : VolumeISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : GrossWeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : WeightUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : WeightISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : UnitSpecificProductLength,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : UnitSpecificProductWidth,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : UnitSpecificProductHeight,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductMeasurementUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductMeasurementISOUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductUnitOfMeasure {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                       : String(18) not null;

      @Common.IsUnit                    : true
      @Core.Computed                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
  key AlternativeUnit               : String(3) not null;

      @Common.IsUnit                    : true
      @Core.Immutable                   : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
      AlternativeSAPUnit            : String(3) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      AlternativeISOUnit            : String(3) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Units / Quantity - Base Unit of Measure'
      @Common.QuickInfo                 : 'Numerator for Conversion to Base Units of Measure'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CMD_BASE_UOM_CNVRSN_FCTR'
      QuantityNumerator             : Decimal (precision : 5) not null;

      @Measures.Unit                    : AlternativeSAPUnit
      @Measures.UNECEUnit               : AlternativeISOUnit
      @Common.Label                     : 'Units / Quantity - Alt Unit of Measure'
      @Common.Heading                   : 'Units / Quantity - Alternate Unit of Measure'
      @Common.QuickInfo                 : 'Denominator for conversion to base units of measure'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CMD_ALT_UOM_CNVRSN_FCTR'
      QuantityDenominator           : Decimal (precision : 5) not null;

      @Measures.Unit                    : VolumeUnit
      @Measures.UNECEUnit               : VolumeISOUnit
      @Common.Label                     : 'Volume'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VOLUM'
      ProductVolume                 : Decimal(13, 3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Volume Unit'
      @Common.Heading                   : 'VUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VOLEH'
      VolumeUnit                    : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Volume unit ISO'
      @Common.Heading                   : 'VUI'
      @Common.QuickInfo                 : 'Volume unit in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VOLEH_ISO'
      VolumeISOUnit                 : String(3) not null;

      @Measures.Unit                    : WeightUnit
      @Measures.UNECEUnit               : WeightISOUnit
      @Common.Label                     : 'Gross Weight'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BRGEW'
      GrossWeight                   : Decimal(13, 3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Unit of Weight'
      @Common.Heading                   : 'WUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=GEWEI'
      WeightUnit                    : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Unit of weight ISO'
      @Common.Heading                   : 'WUn'
      @Common.QuickInfo                 : 'Unit of weight in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=GEWEI_ISO'
      WeightISOUnit                 : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'EAN/UPC'
      @Common.QuickInfo                 : 'International Article Number (EAN/UPC)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=EAN11'
      GlobalTradeItemNumber         : String(18) not null;

      @Common.SAPObjectNodeTypeReference: 'GlobalTradeItemNumberCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'GTIN Category'
      @Common.Heading                   : 'Ct'
      @Common.QuickInfo                 : 'Category of Global Trade Item Number (GTIN)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=INTERNATIONALARTICLENUMBERCAT'
      GlobalTradeItemNumberCategory : String(2) not null;

      @Measures.Unit                    : ProductMeasurementUnit
      @Measures.UNECEUnit               : ProductMeasurementISOUnit
      @Common.Label                     : 'Length'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LAENG'
      UnitSpecificProductLength     : Decimal(13, 3) not null;

      @Measures.Unit                    : ProductMeasurementUnit
      @Measures.UNECEUnit               : ProductMeasurementISOUnit
      @Common.Label                     : 'Width'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BREIT'
      UnitSpecificProductWidth      : Decimal(13, 3) not null;

      @Measures.Unit                    : ProductMeasurementUnit
      @Measures.UNECEUnit               : ProductMeasurementISOUnit
      @Common.Label                     : 'Height'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=HOEHE'
      UnitSpecificProductHeight     : Decimal(13, 3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Unit of Dimension'
      @Common.QuickInfo                 : 'Unit of Dimension for Length/Width/Height'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEABM'
      ProductMeasurementUnit        : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Dimension unit ISO'
      @Common.Heading                   : 'DUI'
      @Common.QuickInfo                 : 'Unit for length/breadth/height in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEABM_ISO'
      ProductMeasurementISOUnit     : String(3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
      LowerLevelPackagingUnit       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Lower-level unit ISO'
      @Common.Heading                   : 'LUnI'
      @Common.QuickInfo                 : 'Lower-Level Unit of Measure in ISO Code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MESUB_ISO'
      LowerLevelPackagingISOUnit    : String(3) not null;

      @odata.Type                       : 'Edm.Byte'
      @Common.Label                     : 'Max. Stacking Factor'
      @Common.Heading                   : 'Max. Stack'
      @Common.QuickInfo                 : 'Maximum Stacking Factor'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CIFMXSTACK'
      MaximumStackingFactor         : Integer not null;

      @Common.Label      : 'Capacity Usage'
      CapacityUsage                 : Decimal(15, 3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                      : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                   : String(3) not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};

      @Common.Composition: true
      _ProductUnitOfMeasureEAN      : Composition of many PRODUCT_0002.ProductUnitOfMeasureEAN
                                        on _ProductUnitOfMeasureEAN._ProductUnitOfMeasure = $self;
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Unit of Measure EAN'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : ['ConsecutiveNumber']
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductUnitOfMeasure'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
entity PRODUCT_0002.ProductUnitOfMeasureEAN {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Material'
      @Common.QuickInfo                 : 'Material Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MATNR'
  key Product                       : String(18) not null;

      @Common.IsUnit                    : true
      @Core.Computed                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.QuickInfo                 : 'Base Unit of Measure - No Conversion Routine'
  key AlternativeUnit               : String(3) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Consecutive number'
      @Common.Heading                   : 'ConNo'
      @Common.QuickInfo                 : 'Consecutive Number'
  key ConsecutiveNumber             : String(5) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      AlternativeISOUnit            : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'EAN/UPC'
      @Common.QuickInfo                 : 'International Article Number (EAN/UPC)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=EAN11'
      ProductStandardID             : String(18) not null;

      @Common.SAPObjectNodeTypeReference: 'GlobalTradeItemNumberCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'GTIN Category'
      @Common.Heading                   : 'Ct'
      @Common.QuickInfo                 : 'Category of Global Trade Item Number (GTIN)'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=INTERNATIONALARTICLENUMBERCAT'
      InternationalArticleNumberCat : String(2) not null;

      @Common.Label                     : 'Main EAN'
      @Common.Heading                   : 'M'
      @Common.QuickInfo                 : 'Indicator: Main EAN'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=HPEAN'
      IsMainGlobalTradeItemNumber   : Boolean not null;
      SAP__Messages                 : many PRODUCT_0002.SAP__Message not null;
      _Product                      : Association to one PRODUCT_0002.Product {};
      _ProductUnitOfMeasure         : Association to one PRODUCT_0002.ProductUnitOfMeasure {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Valuation'
@Common.Messages                                                 : SAP__Messages
@Capabilities.NavigationRestrictions.RestrictedProperties        : [
  {
    NavigationProperty: _ProductValuationAccounting,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductValuationCosting,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductValuationLedgerAccount,
    InsertRestrictions: {Insertable: true}
  },
  {
    NavigationProperty: _ProductValuationLedgerPrices,
    InsertRestrictions: {Insertable: true}
  }
]
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : ['ValuationArea']
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'ValuationArea',
  'ValuationType'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductValuationAccounting',
  '_ProductValuationCosting',
  '_ProductValuationLedgerAccount',
  '_ProductValuationLedgerPrices'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : StandardPrice,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : ProductPriceUnitQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MovingAveragePrice,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductValuation {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                        : String(18) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Area'
      @Common.Heading                   : 'ValA'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWKEY'
  key ValuationArea                  : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationType'
      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Type'
      @Common.Heading                   : 'Val. Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWTAR_D'
  key ValuationType                  : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationClass'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Class'
      @Common.Heading                   : 'ValCl'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BKLAS'
      ValuationClass                 : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'PriceDeterminationControl'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Price Determ.'
      @Common.Heading                   : 'Price Determination'
      @Common.QuickInfo                 : 'Material Price Determination: Control'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_ML_ABST'
      PriceDeterminationControl      : String(1) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Standard price'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=STPRS'
      StandardPrice                  : Decimal (precision : 11) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Price unit'
      @Common.Heading                   : 'per'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PEINH'
      ProductPriceUnitQuantity       : Decimal (precision : 5) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductPriceControl'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Price Control'
      @Common.Heading                   : 'Pr.'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=INVENTORYVALUATIONPROCEDURE'
      InventoryValuationProcedure    : String(1) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Moving price'
      @Common.Heading                   : 'MovAvgPrice'
      @Common.QuickInfo                 : 'Moving Average Price/Periodic Unit Price'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VERPR'
      MovingAveragePrice             : Decimal (precision : 11) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationCategory'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Category'
      @Common.Heading                   : 'ValCat'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWTTY_D'
      ValuationCategory              : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Usage'
      @Common.Heading                   : 'U'
      @Common.QuickInfo                 : 'Usage of the Product'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTUSAGETYPE'
      ProductUsageType               : String(1) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product Origin'
      @Common.Heading                   : 'O'
      @Common.QuickInfo                 : 'Origin of the Product'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTORIGINTYPE'
      ProductOriginType              : String(1) not null;

      @Common.Label                     : 'In-House Production'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=J_1BOWNPRO'
      IsProducedInhouse              : Boolean not null;

      @Common.Label                     : 'Del. flag val. type'
      @Common.Heading                   : 'VTy'
      @Common.QuickInfo                 : 'Deletion flag for all material data of a valuation type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=LVOBA'
      IsMarkedForDeletion            : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationClass'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'VC: Sales Order Stk'
      @Common.Heading                   : 'VCl S'
      @Common.QuickInfo                 : 'Valuation Class for Sales Order Stock'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=EKLAS'
      ValuationClassSalesOrderStock  : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationClass'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Proj. stk val. class'
      @Common.Heading                   : 'VCl P'
      @Common.QuickInfo                 : 'Valuation Class for Project Stock'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=QKLAS'
      ProjectStockValuationClass     : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Currency'
      @Common.Heading                   : 'Crcy'
      @Common.QuickInfo                 : 'Currency Key'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WAERS'
      Currency                       : String(3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                       : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                    : String(3) not null;
      SAP__Messages                  : many PRODUCT_0002.SAP__Message not null;
      _Product                       : Association to one PRODUCT_0002.Product {};

      @Common.Composition: true
      _ProductValuationAccounting    : Composition of one PRODUCT_0002.ProductValuationAccounting
                                         on _ProductValuationAccounting._ProductValuation = $self;

      @Common.Composition: true
      _ProductValuationCosting       : Composition of one PRODUCT_0002.ProductValuationCosting
                                         on _ProductValuationCosting._ProductValuation = $self;

      @Common.Composition: true
      _ProductValuationLedgerAccount : Composition of many PRODUCT_0002.ProductValuationLedgerAccount
                                         on _ProductValuationLedgerAccount._ProductValuation = $self;

      @Common.Composition: true
      _ProductValuationLedgerPrices  : Composition of many PRODUCT_0002.ProductValuationLedgerPrices
                                         on _ProductValuationLedgerPrices._ProductValuation = $self;
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Valuation Accounting'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductValuation'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : CommercialPrice1InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : CommercialPrice2InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : CommercialPrice3InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : FuturePrice,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : TaxPricel1InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : TaxPrice2InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : TaxPrice3InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : TaxBasedPricesPriceUnitQty,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductValuationAccounting {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                      : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Area'
      @Common.Heading                   : 'ValA'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWKEY'
  key ValuationArea                : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationType'
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Type'
      @Common.Heading                   : 'Val. Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWTAR_D'
  key ValuationType                : String(10) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Commercial price 1'
      @Common.Heading                   : 'Comm. pr. 1'
      @Common.QuickInfo                 : 'Valuation price based on commercial law: level 1'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWPRH'
      CommercialPrice1InCoCodeCrcy : Decimal (precision : 11) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Commercial price 2'
      @Common.Heading                   : 'Comm. pr. 2'
      @Common.QuickInfo                 : 'Valuation price based on commercial law: level 2'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWPH1'
      CommercialPrice2InCoCodeCrcy : Decimal (precision : 11) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Commercial price 3'
      @Common.Heading                   : 'Coml pr. 3'
      @Common.QuickInfo                 : 'Valuation price based on commercial law: level 3'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VJBWH'
      CommercialPrice3InCoCodeCrcy : Decimal (precision : 11) not null;

      @Common.IsDigitSequence           : true
      @Common.Label                     : 'Devaluation Ind.'
      @Common.Heading                   : 'DevIn'
      @Common.QuickInfo                 : 'Lowest value: devaluation indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=ABWKZ'
      DevaluationYearCount         : String(2) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Future Price'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZKPRS'
      FuturePrice                  : Decimal (precision : 11) not null;

      @Common.Label                     : 'Valid from'
      @Common.Heading                   : 'Valid fm'
      @Common.QuickInfo                 : 'Date as of which the price is valid'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZKDAT'
      FuturePriceValidityStartDate : Date;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'LIFO Pool'
      @Common.Heading                   : 'Pool'
      @Common.QuickInfo                 : 'Pool number for LIFO valuation'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MYPOOL'
      LIFOValuationPoolNumber      : String(4) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Tax price 1'
      @Common.QuickInfo                 : 'Valuation price based on tax law: level 1'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWPRS'
      TaxPricel1InCoCodeCrcy       : Decimal (precision : 11) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Tax price 2'
      @Common.QuickInfo                 : 'Valuation price based on tax law: level 2'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWPS1'
      TaxPrice2InCoCodeCrcy        : Decimal (precision : 11) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Tax price 3'
      @Common.QuickInfo                 : 'Valuation price based on tax law: level 3'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VJBWS'
      TaxPrice3InCoCodeCrcy        : Decimal (precision : 11) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Price Unit'
      @Common.Heading                   : 'PrUnit'
      @Common.QuickInfo                 : 'Price unit for valuation prices based on tax/commercial law'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWPEI'
      TaxBasedPricesPriceUnitQty   : Decimal (precision : 5) not null;

      @Common.Label                     : 'TRUE'
      @Common.QuickInfo                 : 'Data element for domain BOOLE: TRUE (=''X'') and FALSE (='' '')'
      IsLIFOAndFIFORelevant        : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Currency'
      @Common.Heading                   : 'Crcy'
      @Common.QuickInfo                 : 'Currency Key'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WAERS'
      Currency                     : String(3) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                     : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                  : String(3) not null;
      SAP__Messages                : many PRODUCT_0002.SAP__Message not null;
      _Product                     : Association to one PRODUCT_0002.Product {};
      _ProductValuation            : Association to one PRODUCT_0002.ProductValuation {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Valuation Costing'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductValuation'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : PlannedPrice1InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : PlannedPrice2InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : PlannedPrice3InCoCodeCrcy,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductValuationCosting {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                     : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Area'
      @Common.Heading                   : 'ValA'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWKEY'
  key ValuationArea               : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationType'
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Type'
      @Common.Heading                   : 'Val. Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWTAR_D'
  key ValuationType               : String(10) not null;

      @Common.Label                     : 'With Qty Structure'
      @Common.Heading                   : 'Cost Est. with Qty Structure'
      @Common.QuickInfo                 : 'Material Is Costed with Quantity Structure'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_EKALREL'
      ProductIsCostedWithQtyStruc : Boolean not null;

      @Common.Label                     : 'Material origin'
      @Common.Heading                   : 'MO'
      @Common.QuickInfo                 : 'Material-related origin'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=HKMAT'
      IsMaterialRelatedOrigin     : Boolean not null;

      @Common.SAPObjectNodeTypeReference: 'CostOriginGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Origin Group'
      @Common.Heading                   : 'OrGp'
      @Common.QuickInfo                 : 'Origin Group as Subdivision of Cost Element'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=HRKFT'
      CostOriginGroup             : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'CostingOverheadGroup'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Overhead Group'
      @Common.Heading                   : 'Ovrhd Grp'
      @Common.QuickInfo                 : 'Costing Overhead Group'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_KOSGR'
      CostingOverheadGroup        : String(10) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Planned price 1'
      @Common.Heading                   : 'PlanPrice 1'
      @Common.QuickInfo                 : 'Future Planned Price 1'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZPLP1'
      PlannedPrice1InCoCodeCrcy   : Decimal (precision : 11) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Planned price 2'
      @Common.Heading                   : 'PlanPrice 2'
      @Common.QuickInfo                 : 'Future Planned Price 2'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZPLP2'
      PlannedPrice2InCoCodeCrcy   : Decimal (precision : 11) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Planned price 3'
      @Common.Heading                   : 'PlanPrice 3'
      @Common.QuickInfo                 : 'Future Planned Price 3'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZPLP3'
      PlannedPrice3InCoCodeCrcy   : Decimal (precision : 11) not null;

      @Common.Label                     : 'Planned price date 1'
      @Common.Heading                   : 'PP date 1'
      @Common.QuickInfo                 : 'Date from Which Future Planned Price 1 Is Valid'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZPLD1'
      FuturePlndPrice1ValdtyDate  : Date;

      @Common.Label                     : 'Planned price date 2'
      @Common.Heading                   : 'PP date 2'
      @Common.QuickInfo                 : 'Date from Which Future Planned Price 2 Is Valid'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZPLD2'
      FuturePlndPrice2ValdtyDate  : Date;

      @Common.Label                     : 'Planned price date 3'
      @Common.Heading                   : 'PP date 3'
      @Common.QuickInfo                 : 'Date from Which Future Planned Price 3 Is Valid'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZPLD3'
      FuturePlndPrice3ValdtyDate  : Date;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Currency'
      @Common.Heading                   : 'Crcy'
      @Common.QuickInfo                 : 'Currency Key'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WAERS'
      Currency                    : String(3) not null;
      SAP__Messages               : many PRODUCT_0002.SAP__Message not null;
      _Product                    : Association to one PRODUCT_0002.Product {};
      _ProductValuation           : Association to one PRODUCT_0002.ProductValuation {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Valuation Ledger Account'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : [
  'CurrencyRole',
  'Ledger'
]
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'CurrencyRole',
  'Ledger'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductValuation'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : ProductPriceUnitQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : MovingAveragePrice,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : StandardPrice,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductValuationLedgerAccount {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                  : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Area'
      @Common.Heading                   : 'ValA'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWKEY'
  key ValuationArea            : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationType'
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Type'
      @Common.Heading                   : 'Val. Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWTAR_D'
  key ValuationType            : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'CurrencyRole'
      @Core.Immutable                   : true
      @Common.Label                     : 'Currency/Valuation'
      @Common.Heading                   : 'CrcyTy./ValView'
      @Common.QuickInfo                 : 'External Currency Type and Valuation View'
  key CurrencyRole             : String(2) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Ledger'
      @Common.Heading                   : 'Ld'
      @Common.QuickInfo                 : 'Ledger in General Ledger Accounting'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FINS_LEDGER'
  key Ledger                   : String(2) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductPriceControl'
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Price control'
      @Common.Heading                   : 'Pr.'
      @Common.QuickInfo                 : 'Price control indicator'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=VPRSV'
      ProductPriceControl      : String(1) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Price unit'
      @Common.Heading                   : 'per'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PEINH'
      ProductPriceUnitQuantity : Decimal (precision : 5) not null;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Currency'
      @Common.Heading                   : 'Crcy'
      @Common.QuickInfo                 : 'Currency Key'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WAERS'
      Currency                 : String(3) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Per. Unit Price'
      @Common.Heading                   : 'Per.Unit Price'
      @Common.QuickInfo                 : 'Periodic Unit Price'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_PVPRS_1'
      MovingAveragePrice       : Decimal (precision : 11) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Standard Price'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=CK_STPRS_1'
      StandardPrice            : Decimal (precision : 11) not null;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                 : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit              : String(3) not null;
      SAP__Messages            : many PRODUCT_0002.SAP__Message not null;
      _Product                 : Association to one PRODUCT_0002.Product {};
      _ProductValuation        : Association to one PRODUCT_0002.ProductValuation {};
};

@cds.external                                                    : true
@cds.persistence.skip                                            : true
@Common.Label                                                    : 'Product Valuation Ledger Prices'
@Common.Messages                                                 : SAP__Messages
@Capabilities.SearchRestrictions.Searchable                      : false
@Capabilities.InsertRestrictions.RequiredProperties              : [
  'CurrencyRole',
  'Ledger'
]
@Capabilities.InsertRestrictions.Insertable                      : false
@Capabilities.UpdateRestrictions.DeltaUpdateSupported            : true
@Capabilities.UpdateRestrictions.NonUpdatableProperties          : [
  'CurrencyRole',
  'Ledger'
]
@Capabilities.UpdateRestrictions.NonUpdatableNavigationProperties: [
  '_Product',
  '_ProductValuation'
]
@Capabilities.UpdateRestrictions.QueryOptions.SelectSupported    : true
@Capabilities.DeepUpdateSupport.ContentIDSupported               : true
@Capabilities.DeleteRestrictions.Deletable                       : false
@Core.OptimisticConcurrency                                      : ['_Product/LastChangeDateTime']
@Capabilities.FilterRestrictions.FilterExpressionRestrictions    : [
  {
    Property          : ProductPriceUnitQuantity,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : FuturePrice,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseUnit,
    AllowedExpressions: 'MultiValue'
  },
  {
    Property          : BaseISOUnit,
    AllowedExpressions: 'MultiValue'
  }
]
entity PRODUCT_0002.ProductValuationLedgerPrices {
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Product'
      @Common.QuickInfo                 : 'Product Number'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PRODUCTNUMBER'
  key Product                      : String(18) not null;

      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Area'
      @Common.Heading                   : 'ValA'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWKEY'
  key ValuationArea                : String(4) not null;

      @Common.SAPObjectNodeTypeReference: 'ProductValuationType'
      @Core.Computed                    : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Valuation Type'
      @Common.Heading                   : 'Val. Type'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=BWTAR_D'
  key ValuationType                : String(10) not null;

      @Common.SAPObjectNodeTypeReference: 'CurrencyRole'
      @Core.Immutable                   : true
      @Common.Label                     : 'Currency/Valuation'
      @Common.Heading                   : 'CrcyTy./ValView'
      @Common.QuickInfo                 : 'External Currency Type and Valuation View'
  key CurrencyRole                 : String(2) not null;

      @Core.Immutable                   : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Ledger'
      @Common.Heading                   : 'Ld'
      @Common.QuickInfo                 : 'Ledger in General Ledger Accounting'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=FINS_LEDGER'
  key Ledger                       : String(2) not null;

      @Measures.Unit                    : BaseUnit
      @Measures.UNECEUnit               : BaseISOUnit
      @Common.Label                     : 'Price unit'
      @Common.Heading                   : 'per'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=PEINH'
      ProductPriceUnitQuantity     : Decimal (precision : 5) not null;

      @Common.SAPObjectNodeTypeReference: 'Currency'
      @Common.IsCurrency                : true
      @Common.IsUpperCase               : true
      @Common.Label                     : 'Currency'
      @Common.Heading                   : 'Crcy'
      @Common.QuickInfo                 : 'Currency Key'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=WAERS'
      Currency                     : String(3) not null;

      @Measures.ISOCurrency             : Currency
      @Common.Label                     : 'Future Price'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=DZKPRS'
      FuturePrice                  : Decimal (precision : 11) not null;

      @Common.Label: 'Valid From'
      FuturePriceValidityStartDate : Date;

      @Common.IsUnit                    : true
      @Common.Label                     : 'Base Unit of Measure'
      @Common.Heading                   : 'BUn'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS'
      BaseUnit                     : String(3) not null;

      @Common.IsUpperCase               : true
      @Common.Label                     : 'Base unit ISO code'
      @Common.Heading                   : 'BUI'
      @Common.QuickInfo                 : 'Base unit of measure in ISO code'
      @Common.DocumentationRef          : 'urn:sap-com:documentation:key?=type=DE&id=MEINS_ISO'
      BaseISOUnit                  : String(3) not null;
      SAP__Messages                : many PRODUCT_0002.SAP__Message not null;
      _Product                     : Association to one PRODUCT_0002.Product {};
      _ProductValuation            : Association to one PRODUCT_0002.ProductValuation {};
};
