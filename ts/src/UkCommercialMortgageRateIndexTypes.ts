// Typed models for the UkCommercialMortgageRateIndex SDK.
//
// GENERATED from the API model: main.kit.entity.<e>.fields{} and per-op
// params (op.<name>.points[].g.params[]). Field/param types come from the
// canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
// @voxgig/apidef VALID_CANON). Do not edit by hand.

export interface Calculator {
  arrFeePct?: number
  loan?: number
  margin?: number
  otherFees?: number
  rent?: number
  term?: number
  value?: number
}

export interface CalculatorCreateData {
  arrFeePct?: number
  loan?: number
  margin?: number
  otherFees?: number
  rent?: number
  term?: number
  value?: number
}

export interface Enquiry {
  answers: Record<string, any>
  confirmation?: string
  consent: boolean
}

export interface EnquiryCreateData {
  answers: Record<string, any>
  confirmation?: string
  consent: boolean
}

export interface Mcp {
  id?: string
  jsonrpc: any
  method: string
  params?: Record<string, any>
}

export interface McpLoadMatch {
  id: string
  jsonrpc?: any
  method?: string
  params?: Record<string, any>
}

export interface McpCreateData {
  id?: string
  jsonrpc: any
  method: string
  params?: Record<string, any>
}

