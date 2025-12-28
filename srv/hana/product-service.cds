using {replication} from '../../db/schema-product';
using {PRService} from '../product-service';

extend service PRService with {

    entity ProductBasicTextSearch(query: String) as
        select from replication.ProductBasicText {
            Product,
            Language,
            ProductLongText,
            :query as query             : String,
            cosine_similarity(
                ProductLongTextEmbedding, to_real_vector(vector_embedding(
                    :query, 'QUERY', 'SAP_NEB.20240715'
                ))
            )      as cosine_similarity : String,
            l2distance(
                ProductLongTextEmbedding, to_real_vector(vector_embedding(
                    :query, 'QUERY', 'SAP_NEB.20240715'
                ))
            )      as l2distance        : String,
        }
        order by
            cosine_similarity desc
        limit 5;

}
