using {replication} from '../db/schema';

@(requires: 'authenticated-user')
service ReplicationService {

    entity A_BusinessPartner       as projection on replication.A_BusinessPartner;
    entity A_Customer              as projection on replication.A_Customer;
    entity A_CustomerSalesArea     as projection on replication.A_CustomerSalesArea;
    entity A_CustomerSalesAreaText as projection on replication.A_CustomerSalesAreaText;
    action loadEntitiesFromS4(Destination : String(100), BlockSize : Integer, maxCount : Integer);
    action deleteAllReplicatedEntities();

}
