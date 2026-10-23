# UkCommercialMortgageRateIndex SDK utility: make_context
require_relative '../core/context'
module UkCommercialMortgageRateIndexUtilities
  MakeContext = ->(ctxmap, basectx) {
    UkCommercialMortgageRateIndexContext.new(ctxmap, basectx)
  }
end
