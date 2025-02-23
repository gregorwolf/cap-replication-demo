using {replication} from '../db/schema';

service ReplicationService {

    entity BusinessPartner       as projection on replication.BusinessPartner;
    entity CustomerSalesAreaText as projection on replication.CustomerSalesAreaText;
    action loadEntitiesFromS4(Destination: String(100), BlockSize : Integer, maxCount : Integer);
    action deleteAllReplicatedEntities();

}
