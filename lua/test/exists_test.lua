-- UkCommercialMortgageRateIndex SDK exists test

local sdk = require("uk-commercial-mortgage-rate-index_sdk")

describe("UkCommercialMortgageRateIndexSDK", function()
  it("should create test SDK", function()
    local testsdk = sdk.test(nil, nil)
    assert.is_not_nil(testsdk)
  end)
end)
