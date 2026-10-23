# UkCommercialMortgageRateIndex SDK feature factory

require_relative 'feature/base_feature'
require_relative 'feature/ratelimit_feature'
require_relative 'feature/retry_feature'
require_relative 'feature/test_feature'
require_relative 'feature/timeout_feature'


module UkCommercialMortgageRateIndexFeatures
  def self.make_feature(name)
    case name
    when "base"
      UkCommercialMortgageRateIndexBaseFeature.new
    when "ratelimit"
      UkCommercialMortgageRateIndexRatelimitFeature.new
    when "retry"
      UkCommercialMortgageRateIndexRetryFeature.new
    when "test"
      UkCommercialMortgageRateIndexTestFeature.new
    when "timeout"
      UkCommercialMortgageRateIndexTimeoutFeature.new
    else
      UkCommercialMortgageRateIndexBaseFeature.new
    end
  end
end
