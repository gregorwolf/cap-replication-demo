using {replication} from '../db/schema';

service ReplicationService {

    entity BusinessPartner       as projection on replication.BusinessPartner;
    entity CustomerSalesAreaText as projection on replication.CustomerSalesAreaText;
    action loadBusinessPartner(BlockSize : Integer);
    action deleteAllBusinessPartners();

}
