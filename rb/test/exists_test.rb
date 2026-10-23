# UkCommercialMortgageRateIndex SDK exists test

require "minitest/autorun"
require_relative "../UkCommercialMortgageRateIndex_sdk"

class ExistsTest < Minitest::Test
  def test_create_test_sdk
    testsdk = UkCommercialMortgageRateIndexSDK.test(nil, nil)
    assert !testsdk.nil?
  end
end
