using {replication} from '../db/schema';

service ReplicationService {

    entity BusinessPartner       as projection on replication.BusinessPartner;
    entity CustomerSalesAreaText as projection on replication.CustomerSalesAreaText;
    action loadEntitiesFromS4(BlockSize : Integer, maxCount : Integer);
    action deleteAllReplicatedEntities();

}
