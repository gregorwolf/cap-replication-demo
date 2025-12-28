using {replication} from '../schema-product';

extend replication.ProductBasicText with {
    ProductLongTextEmbedding : Vector = VECTOR_EMBEDDING(
        ProductLongText, 'DOCUMENT', 'SAP_NEB.20240715'
    ) stored;
}
