using {replication} from '../db/schema';

@(requires: 'authenticated-user')
@(path: 'API_BUSINESS_PARTNER')
service BPService {

    entity A_BusinessPartner        as
        projection on replication.A_BusinessPartner
        /*
        excluding {
            to_Customer,
            to_BusinessPartnerAddress
        }
        */
        ;

    entity A_Customer               as projection on replication.A_Customer;
    entity A_CustomerSalesArea      as projection on replication.A_CustomerSalesArea;
    entity A_CustomerSalesAreaText  as projection on replication.A_CustomerSalesAreaText;
    entity A_BusinessPartnerAddress as projection on replication.A_BusinessPartnerAddress;

}
