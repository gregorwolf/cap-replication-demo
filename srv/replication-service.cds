using {replication} from '../db/schema';

@(requires: 'authenticated-user')
service ReplicationService {

    action loadEntitiesFromS4(Destination : String(100), blockSize : Integer, maxCount : Integer);
    action deleteAllReplicatedEntities();

}
