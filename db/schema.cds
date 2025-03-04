using {API_BUSINESS_PARTNER as bp} from '../srv/external/API_BUSINESS_PARTNER';

namespace replication;

aspect source {
    key source : String(100);
}

@cds.persistence.skip: false
entity BusinessPartner : bp.A_BusinessPartner, source {

};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.SalesOrganization = SalesOrganization'
}])
entity CustomerSalesAreaText : bp.A_CustomerSalesAreaText, source {

}
