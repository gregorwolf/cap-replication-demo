using {API_BUSINESS_PARTNER as bp} from '../srv/external/API_BUSINESS_PARTNER';

namespace replication;

@cds.persistence.skip: false
entity BusinessPartner : bp.A_BusinessPartner {};

@cds.persistence.skip: false
entity CustomerSalesAreaText : bp.A_CustomerSalesAreaText {

}
