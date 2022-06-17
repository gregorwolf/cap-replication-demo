using {replication} from '../db/schema';

service ReplicationService {

    entity BusinessPartner as projection on replication.BusinessPartner;
    action loadBusinessPartner(BlockSize : Integer);
    action deleteAllBusinessPartners();

}
