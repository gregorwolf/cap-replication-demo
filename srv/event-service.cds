using {API_BUSINESS_PARTNER as bp} from './external/API_BUSINESS_PARTNER';

service EventService {

    action bpChanged(BusinessPartner : bp.A_BusinessPartner:BusinessPartner);

}
