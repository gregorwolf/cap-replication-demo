// filling in missing events as found on SAP API Business Hub
using {API_BUSINESS_PARTNER_PROD as S4} from './API_BUSINESS_PARTNER_PROD';

extend service S4 with {
    event BusinessPartner.Created @(topic : 'sap.s4.beh.businesspartner.v1.BusinessPartner.Created.v1') {
        BusinessPartner : String
    }

    event BusinessPartner.Changed @(topic : 'sap.s4.beh.businesspartner.v1.BusinessPartner.Changed.v1') {
        BusinessPartner : String
    }

    action bpChanged(BusinessPartner : String);

}
