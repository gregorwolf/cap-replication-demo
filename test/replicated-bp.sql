SELECT json_insert(
    '{}',
    '$."BusinessPartner"',
    BusinessPartner,
    '$."BusinessPartnerFullName"',
    BusinessPartnerFullName,
    '$."BusinessPartnerIsBlocked"',
    CASE
      BusinessPartnerIsBlocked
      when 1 then 'true'
      when 0 then 'false'
    END->'$',
    '$."source"',
    source,
    '$."to_Customer"',
    to_Customer->'$'
  ) as _json_
FROM (
    SELECT A_BusinessPartner.BusinessPartner,
      A_BusinessPartner.BusinessPartnerFullName,
      A_BusinessPartner.BusinessPartnerIsBlocked,
      A_BusinessPartner.source,
      (
        SELECT json_insert(
            '{}',
            '$."Customer"',
            Customer,
            '$."AuthorizationGroup"',
            AuthorizationGroup,
            '$."BillingIsBlockedForCustomer"',
            BillingIsBlockedForCustomer,
            '$."CreatedByUser"',
            CreatedByUser,
            '$."CreationDate"',
            CreationDate,
            '$."CustomerAccountGroup"',
            CustomerAccountGroup,
            '$."CustomerClassification"',
            CustomerClassification,
            '$."CustomerFullName"',
            CustomerFullName,
            '$."CustomerName"',
            CustomerName,
            '$."DeliveryIsBlocked"',
            DeliveryIsBlocked,
            '$."NFPartnerIsNaturalPerson"',
            NFPartnerIsNaturalPerson,
            '$."OrderIsBlockedForCustomer"',
            OrderIsBlockedForCustomer,
            '$."PostingIsBlocked"',
            CASE
              PostingIsBlocked
              when 1 then 'true'
              when 0 then 'false'
            END->'$',
            '$."Supplier"',
            Supplier,
            '$."CustomerCorporateGroup"',
            CustomerCorporateGroup,
            '$."FiscalAddress"',
            FiscalAddress,
            '$."Industry"',
            Industry,
            '$."IndustryCode1"',
            IndustryCode1,
            '$."IndustryCode2"',
            IndustryCode2,
            '$."IndustryCode3"',
            IndustryCode3,
            '$."IndustryCode4"',
            IndustryCode4,
            '$."IndustryCode5"',
            IndustryCode5,
            '$."InternationalLocationNumber1"',
            InternationalLocationNumber1,
            '$."NielsenRegion"',
            NielsenRegion,
            '$."ResponsibleType"',
            ResponsibleType,
            '$."TaxNumber1"',
            TaxNumber1,
            '$."TaxNumber2"',
            TaxNumber2,
            '$."TaxNumber3"',
            TaxNumber3,
            '$."TaxNumber4"',
            TaxNumber4,
            '$."TaxNumber5"',
            TaxNumber5,
            '$."TaxNumberType"',
            TaxNumberType,
            '$."VATRegistration"',
            VATRegistration,
            '$."DeletionIndicator"',
            CASE
              DeletionIndicator
              when 1 then 'true'
              when 0 then 'false'
            END->'$',
            '$."ExpressTrainStationName"',
            ExpressTrainStationName,
            '$."TrainStationName"',
            TrainStationName,
            '$."CityCode"',
            CityCode,
            '$."County"',
            County,
            '$."source"',
            source,
            '$."to_CustomerSalesArea"',
            to_CustomerSalesArea->'$'
          ) as _json_
        FROM (
            SELECT to_Customer2.Customer,
              to_Customer2.AuthorizationGroup,
              to_Customer2.BillingIsBlockedForCustomer,
              to_Customer2.CreatedByUser,
              to_Customer2.CreationDate,
              to_Customer2.CustomerAccountGroup,
              to_Customer2.CustomerClassification,
              to_Customer2.CustomerFullName,
              to_Customer2.CustomerName,
              to_Customer2.DeliveryIsBlocked,
              to_Customer2.NFPartnerIsNaturalPerson,
              to_Customer2.OrderIsBlockedForCustomer,
              to_Customer2.PostingIsBlocked,
              to_Customer2.Supplier,
              to_Customer2.CustomerCorporateGroup,
              to_Customer2.FiscalAddress,
              to_Customer2.Industry,
              to_Customer2.IndustryCode1,
              to_Customer2.IndustryCode2,
              to_Customer2.IndustryCode3,
              to_Customer2.IndustryCode4,
              to_Customer2.IndustryCode5,
              to_Customer2.InternationalLocationNumber1,
              to_Customer2.NielsenRegion,
              to_Customer2.ResponsibleType,
              to_Customer2.TaxNumber1,
              to_Customer2.TaxNumber2,
              to_Customer2.TaxNumber3,
              to_Customer2.TaxNumber4,
              to_Customer2.TaxNumber5,
              to_Customer2.TaxNumberType,
              to_Customer2.VATRegistration,
              to_Customer2.DeletionIndicator,
              to_Customer2.ExpressTrainStationName,
              to_Customer2.TrainStationName,
              to_Customer2.CityCode,
              to_Customer2.County,
              to_Customer2.source,
              (
                SELECT jsonb_group_array(
                    jsonb_insert(
                      '{}',
                      '$."Customer"',
                      Customer,
                      '$."SalesOrganization"',
                      SalesOrganization,
                      '$."DistributionChannel"',
                      DistributionChannel,
                      '$."Division"',
                      Division,
                      '$."AccountByCustomer"',
                      AccountByCustomer,
                      '$."AuthorizationGroup"',
                      AuthorizationGroup,
                      '$."BillingIsBlockedForCustomer"',
                      BillingIsBlockedForCustomer,
                      '$."CompleteDeliveryIsDefined"',
                      CASE
                        CompleteDeliveryIsDefined
                        when 1 then 'true'
                        when 0 then 'false'
                      END->'$',
                      '$."Currency"',
                      Currency,
                      '$."CustomerABCClassification"',
                      CustomerABCClassification,
                      '$."CustomerAccountAssignmentGroup"',
                      CustomerAccountAssignmentGroup,
                      '$."CustomerGroup"',
                      CustomerGroup,
                      '$."CustomerPaymentTerms"',
                      CustomerPaymentTerms,
                      '$."CustomerPriceGroup"',
                      CustomerPriceGroup,
                      '$."CustomerPricingProcedure"',
                      CustomerPricingProcedure,
                      '$."DeliveryIsBlockedForCustomer"',
                      DeliveryIsBlockedForCustomer,
                      '$."DeliveryPriority"',
                      DeliveryPriority,
                      '$."IncotermsClassification"',
                      IncotermsClassification,
                      '$."IncotermsLocation2"',
                      IncotermsLocation2,
                      '$."IncotermsVersion"',
                      IncotermsVersion,
                      '$."IncotermsLocation1"',
                      IncotermsLocation1,
                      '$."DeletionIndicator"',
                      CASE
                        DeletionIndicator
                        when 1 then 'true'
                        when 0 then 'false'
                      END->'$',
                      '$."IncotermsTransferLocation"',
                      IncotermsTransferLocation,
                      '$."InvoiceDate"',
                      InvoiceDate,
                      '$."ItemOrderProbabilityInPercent"',
                      ItemOrderProbabilityInPercent,
                      '$."OrderCombinationIsAllowed"',
                      CASE
                        OrderCombinationIsAllowed
                        when 1 then 'true'
                        when 0 then 'false'
                      END->'$',
                      '$."OrderIsBlockedForCustomer"',
                      OrderIsBlockedForCustomer,
                      '$."PartialDeliveryIsAllowed"',
                      PartialDeliveryIsAllowed,
                      '$."PriceListType"',
                      PriceListType,
                      '$."SalesGroup"',
                      SalesGroup,
                      '$."SalesOffice"',
                      SalesOffice,
                      '$."ShippingCondition"',
                      ShippingCondition,
                      '$."SupplyingPlant"',
                      SupplyingPlant,
                      '$."SalesDistrict"',
                      SalesDistrict,
                      '$."InvoiceListSchedule"',
                      InvoiceListSchedule,
                      '$."ExchangeRateType"',
                      ExchangeRateType,
                      '$."AdditionalCustomerGroup1"',
                      AdditionalCustomerGroup1,
                      '$."AdditionalCustomerGroup2"',
                      AdditionalCustomerGroup2,
                      '$."AdditionalCustomerGroup3"',
                      AdditionalCustomerGroup3,
                      '$."AdditionalCustomerGroup4"',
                      AdditionalCustomerGroup4,
                      '$."AdditionalCustomerGroup5"',
                      AdditionalCustomerGroup5,
                      '$."PaymentGuaranteeProcedure"',
                      PaymentGuaranteeProcedure,
                      '$."CustomerAccountGroup"',
                      CustomerAccountGroup,
                      '$."source"',
                      source,
                      '$."to_SalesAreaText"',
                      to_SalesAreaText->'$'
                    )
                  ) as _json_
                FROM (
                    SELECT to_CustomerSalesArea2.Customer,
                      to_CustomerSalesArea2.SalesOrganization,
                      to_CustomerSalesArea2.DistributionChannel,
                      to_CustomerSalesArea2.Division,
                      to_CustomerSalesArea2.AccountByCustomer,
                      to_CustomerSalesArea2.AuthorizationGroup,
                      to_CustomerSalesArea2.BillingIsBlockedForCustomer,
                      to_CustomerSalesArea2.CompleteDeliveryIsDefined,
                      to_CustomerSalesArea2.Currency,
                      to_CustomerSalesArea2.CustomerABCClassification,
                      to_CustomerSalesArea2.CustomerAccountAssignmentGroup,
                      to_CustomerSalesArea2.CustomerGroup,
                      to_CustomerSalesArea2.CustomerPaymentTerms,
                      to_CustomerSalesArea2.CustomerPriceGroup,
                      to_CustomerSalesArea2.CustomerPricingProcedure,
                      to_CustomerSalesArea2.DeliveryIsBlockedForCustomer,
                      to_CustomerSalesArea2.DeliveryPriority,
                      to_CustomerSalesArea2.IncotermsClassification,
                      to_CustomerSalesArea2.IncotermsLocation2,
                      to_CustomerSalesArea2.IncotermsVersion,
                      to_CustomerSalesArea2.IncotermsLocation1,
                      to_CustomerSalesArea2.DeletionIndicator,
                      to_CustomerSalesArea2.IncotermsTransferLocation,
                      to_CustomerSalesArea2.InvoiceDate,
                      to_CustomerSalesArea2.ItemOrderProbabilityInPercent,
                      to_CustomerSalesArea2.OrderCombinationIsAllowed,
                      to_CustomerSalesArea2.OrderIsBlockedForCustomer,
                      to_CustomerSalesArea2.PartialDeliveryIsAllowed,
                      to_CustomerSalesArea2.PriceListType,
                      to_CustomerSalesArea2.SalesGroup,
                      to_CustomerSalesArea2.SalesOffice,
                      to_CustomerSalesArea2.ShippingCondition,
                      to_CustomerSalesArea2.SupplyingPlant,
                      to_CustomerSalesArea2.SalesDistrict,
                      to_CustomerSalesArea2.InvoiceListSchedule,
                      to_CustomerSalesArea2.ExchangeRateType,
                      to_CustomerSalesArea2.AdditionalCustomerGroup1,
                      to_CustomerSalesArea2.AdditionalCustomerGroup2,
                      to_CustomerSalesArea2.AdditionalCustomerGroup3,
                      to_CustomerSalesArea2.AdditionalCustomerGroup4,
                      to_CustomerSalesArea2.AdditionalCustomerGroup5,
                      to_CustomerSalesArea2.PaymentGuaranteeProcedure,
                      to_CustomerSalesArea2.CustomerAccountGroup,
                      to_CustomerSalesArea2.source,
                      (
                        SELECT jsonb_group_array(
                            jsonb_insert(
                              '{}',
                              '$."Customer"',
                              Customer,
                              '$."SalesOrganization"',
                              SalesOrganization,
                              '$."DistributionChannel"',
                              DistributionChannel,
                              '$."Division"',
                              Division,
                              '$."Language"',
                              Language,
                              '$."LongTextID"',
                              LongTextID,
                              '$."LongText"',
                              LongText,
                              '$."source"',
                              source
                            )
                          ) as _json_
                        FROM (
                            SELECT to_SalesAreaText.Customer,
                              to_SalesAreaText.SalesOrganization,
                              to_SalesAreaText.DistributionChannel,
                              to_SalesAreaText.Division,
                              to_SalesAreaText.Language,
                              to_SalesAreaText.LongTextID,
                              to_SalesAreaText.LongText,
                              to_SalesAreaText.source
                            FROM BPService_A_CustomerSalesAreaText as to_SalesAreaText
                            WHERE to_SalesAreaText.Customer = to_CustomerSalesArea2.Customer
                              and to_SalesAreaText.SalesOrganization = to_CustomerSalesArea2.SalesOrganization
                              and to_SalesAreaText.DistributionChannel = to_CustomerSalesArea2.DistributionChannel
                              and to_SalesAreaText.Division = to_CustomerSalesArea2.Division
                              and to_SalesAreaText.source = to_CustomerSalesArea2.source
                          )
                      ) as to_SalesAreaText
                    FROM BPService_A_CustomerSalesArea as to_CustomerSalesArea2
                    WHERE to_CustomerSalesArea2.Customer = to_Customer2.Customer
                      and to_CustomerSalesArea2.source = to_Customer2.source
                  )
              ) as to_CustomerSalesArea
            FROM BPService_A_Customer as to_Customer2
            WHERE to_Customer2.Customer = A_BusinessPartner.Customer
              and to_Customer2.source = A_BusinessPartner.source
            LIMIT ?
          )
      ) as to_Customer
    FROM BPService_A_BusinessPartner as A_BusinessPartner
      left JOIN BPService_A_Customer as to_Customer ON to_Customer.Customer = A_BusinessPartner.Customer
      and to_Customer.source = A_BusinessPartner.source
      left JOIN BPService_A_CustomerSalesArea as to_CustomerSalesArea ON to_CustomerSalesArea.Customer = to_Customer.Customer
      and to_CustomerSalesArea.source = to_Customer.source
    WHERE (? = to_CustomerSalesArea.SalesOrganization)
    ORDER BY A_BusinessPartner.BusinessPartner COLLATE NOCASE ASC,
      A_BusinessPartner.source COLLATE NOCASE ASC
    LIMIT ?
  ) -- Parameters:
  -- [ 1, '1710', 10 ]