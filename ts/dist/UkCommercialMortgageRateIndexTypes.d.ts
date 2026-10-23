export interface Calculator {
    arrFeePct?: number;
    loan?: number;
    margin?: number;
    otherFees?: number;
    rent?: number;
    term?: number;
    value?: number;
}
export interface CalculatorCreateData {
    arrFeePct?: number;
    loan?: number;
    margin?: number;
    otherFees?: number;
    rent?: number;
    term?: number;
    value?: number;
}
export interface Enquiry {
    answers: Record<string, any>;
    confirmation?: string;
    consent: boolean;
}
export interface EnquiryCreateData {
    answers: Record<string, any>;
    confirmation?: string;
    consent: boolean;
}
export interface Mcp {
    id?: string;
    jsonrpc: any;
    method: string;
    params?: Record<string, any>;
}
export interface McpLoadMatch {
    id: string;
    jsonrpc?: any;
    method?: string;
    params?: Record<string, any>;
}
export interface McpCreateData {
    id?: string;
    jsonrpc: any;
    method: string;
    params?: Record<string, any>;
}
