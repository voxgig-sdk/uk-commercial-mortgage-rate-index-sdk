import { UkCommercialMortgageRateIndexEntityBase } from '../UkCommercialMortgageRateIndexEntityBase';
import type { UkCommercialMortgageRateIndexSDK } from '../UkCommercialMortgageRateIndexSDK';
import type { Control } from '../types';
import type { Mcp, McpLoadMatch, McpCreateData } from '../UkCommercialMortgageRateIndexTypes';
declare class McpEntity extends UkCommercialMortgageRateIndexEntityBase<Mcp> {
    constructor(client: UkCommercialMortgageRateIndexSDK, entopts: any);
    make(this: McpEntity): McpEntity;
    load(this: any, reqmatch?: McpLoadMatch, ctrl?: Control): Promise<McpEntity>;
    create(this: any, reqdata?: McpCreateData, ctrl?: Control): Promise<McpEntity>;
}
export { McpEntity };
