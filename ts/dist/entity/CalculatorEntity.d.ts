import { UkCommercialMortgageRateIndexEntityBase } from '../UkCommercialMortgageRateIndexEntityBase';
import type { UkCommercialMortgageRateIndexSDK } from '../UkCommercialMortgageRateIndexSDK';
import type { Control } from '../types';
import type { Calculator, CalculatorCreateData } from '../UkCommercialMortgageRateIndexTypes';
declare class CalculatorEntity extends UkCommercialMortgageRateIndexEntityBase<Calculator> {
    constructor(client: UkCommercialMortgageRateIndexSDK, entopts: any);
    make(this: CalculatorEntity): CalculatorEntity;
    create(this: any, reqdata?: CalculatorCreateData, ctrl?: Control): Promise<CalculatorEntity>;
}
export { CalculatorEntity };
