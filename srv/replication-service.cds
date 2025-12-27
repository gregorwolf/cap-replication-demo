using {replication} from '../db/schema';

@(requires: 'authenticated-user')
service ReplicationService {

    action loadEntitiesFromS4(s4api: String(100),
                              Destination: String(100),
                              blockSize: Integer,
                              maxCount: Integer);

    action deleteAllReplicatedEntities();

}
