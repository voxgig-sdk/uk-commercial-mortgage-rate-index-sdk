import { UkCommercialMortgageRateIndexEntityBase } from '../UkCommercialMortgageRateIndexEntityBase';
import type { UkCommercialMortgageRateIndexSDK } from '../UkCommercialMortgageRateIndexSDK';
import type { Control } from '../types';
import type { Enquiry, EnquiryCreateData } from '../UkCommercialMortgageRateIndexTypes';
declare class EnquiryEntity extends UkCommercialMortgageRateIndexEntityBase<Enquiry> {
    constructor(client: UkCommercialMortgageRateIndexSDK, entopts: any);
    make(this: EnquiryEntity): EnquiryEntity;
    create(this: any, reqdata?: EnquiryCreateData, ctrl?: Control): Promise<EnquiryEntity>;
}
export { EnquiryEntity };
