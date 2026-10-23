# UkCommercialMortgageRateIndex SDK utility: prepare_body
require_relative 'media'
module UkCommercialMortgageRateIndexUtilities
  PrepareBody = ->(ctx) {
    return nil unless ctx.op.input == "data"
    return UkCommercialMortgageRateIndexUtilities.raw_body(ctx.reqdata) if UkCommercialMortgageRateIndexUtilities.raw_request?(ctx.point)
    ctx.utility.transform_request.call(ctx)
  }
end
