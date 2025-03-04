using {API_BUSINESS_PARTNER as bp} from '../srv/external/API_BUSINESS_PARTNER';

namespace replication;

aspect source {
    key source : String(100);
}

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.SalesOrganization = to_Customer.to_CustomerSalesArea.SalesOrganization'
}])
entity BusinessPartner : bp.A_BusinessPartner, source {
    to_Customer : Association to replication.Customer
                      on  to_Customer.Customer = $self.Customer
                      and to_Customer.source   = $self.source;
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.SalesOrganization = to_CustomerSalesArea.SalesOrganization'
}])
entity Customer : bp.A_Customer, source {
    to_CustomerSalesArea : Association to many replication.CustomerSalesArea
                               on  to_CustomerSalesArea.Customer = $self.Customer
                               and to_CustomerSalesArea.source   = $self.source;

};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.SalesOrganization = SalesOrganization'
}])
entity CustomerSalesArea : bp.A_CustomerSalesArea, source {
    to_SalesAreaText : Association to many replication.CustomerSalesAreaText
                           on  to_SalesAreaText.Customer            = $self.Customer
                           and to_SalesAreaText.SalesOrganization   = $self.SalesOrganization
                           and to_SalesAreaText.DistributionChannel = $self.DistributionChannel
                           and to_SalesAreaText.Division            = $self.Division
                           and to_SalesAreaText.source              = $self.source
};

@cds.persistence.skip: false
@(restrict: [{
    grant: 'READ',
    where: '$user.SalesOrganization = SalesOrganization'
}])
entity CustomerSalesAreaText : bp.A_CustomerSalesAreaText, source {

}
