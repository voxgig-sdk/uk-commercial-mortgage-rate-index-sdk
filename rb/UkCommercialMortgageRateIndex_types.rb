# frozen_string_literal: true

# Typed models for the UkCommercialMortgageRateIndex SDK.
#
# GENERATED from the API model: main.kit.entity.<e>.fields{} and per-op
# params (op.<name>.points[].g.params[]). Member types come from the
# canonical type sentinels via @voxgig/sdkgen canonToType (source of truth:
# @voxgig/apidef VALID_CANON). Ruby types are unenforced; these YARD
# annotations document the shapes. Do not edit by hand.

# Calculator entity data model.
#
# @!attribute [rw] arrFeePct
#   @return [Float, nil]
#
# @!attribute [rw] loan
#   @return [Float, nil]
#
# @!attribute [rw] margin
#   @return [Float, nil]
#
# @!attribute [rw] otherFees
#   @return [Float, nil]
#
# @!attribute [rw] rent
#   @return [Float, nil]
#
# @!attribute [rw] term
#   @return [Float, nil]
#
# @!attribute [rw] value
#   @return [Float, nil]
Calculator = Struct.new(
  :arrFeePct,
  :loan,
  :margin,
  :otherFees,
  :rent,
  :term,
  :value,
  keyword_init: true
)

# Request payload for Calculator#create.
#
# @!attribute [rw] arrFeePct
#   @return [Float, nil]
#
# @!attribute [rw] loan
#   @return [Float, nil]
#
# @!attribute [rw] margin
#   @return [Float, nil]
#
# @!attribute [rw] otherFees
#   @return [Float, nil]
#
# @!attribute [rw] rent
#   @return [Float, nil]
#
# @!attribute [rw] term
#   @return [Float, nil]
#
# @!attribute [rw] value
#   @return [Float, nil]
CalculatorCreateData = Struct.new(
  :arrFeePct,
  :loan,
  :margin,
  :otherFees,
  :rent,
  :term,
  :value,
  keyword_init: true
)

# Enquiry entity data model.
#
# @!attribute [rw] answers
#   @return [Hash]
#
# @!attribute [rw] confirmation
#   @return [String, nil]
#
# @!attribute [rw] consent
#   @return [Boolean]
Enquiry = Struct.new(
  :answers,
  :confirmation,
  :consent,
  keyword_init: true
)

# Request payload for Enquiry#create.
#
# @!attribute [rw] answers
#   @return [Hash]
#
# @!attribute [rw] confirmation
#   @return [String, nil]
#
# @!attribute [rw] consent
#   @return [Boolean]
EnquiryCreateData = Struct.new(
  :answers,
  :confirmation,
  :consent,
  keyword_init: true
)

# Mcp entity data model.
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] jsonrpc
#   @return [Object]
#
# @!attribute [rw] method
#   @return [String]
#
# @!attribute [rw] params
#   @return [Hash, nil]
Mcp = Struct.new(
  :id,
  :jsonrpc,
  :method,
  :params,
  keyword_init: true
)

# Request payload for Mcp#load.
#
# @!attribute [rw] id
#   @return [String]
#
# @!attribute [rw] jsonrpc
#   @return [Object, nil]
#
# @!attribute [rw] method
#   @return [String, nil]
#
# @!attribute [rw] params
#   @return [Hash, nil]
McpLoadMatch = Struct.new(
  :id,
  :jsonrpc,
  :method,
  :params,
  keyword_init: true
)

# Request payload for Mcp#create.
#
# @!attribute [rw] id
#   @return [String, nil]
#
# @!attribute [rw] jsonrpc
#   @return [Object]
#
# @!attribute [rw] method
#   @return [String]
#
# @!attribute [rw] params
#   @return [Hash, nil]
McpCreateData = Struct.new(
  :id,
  :jsonrpc,
  :method,
  :params,
  keyword_init: true
)

