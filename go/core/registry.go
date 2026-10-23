package core

var UtilityRegistrar func(u *Utility)

var NewBaseFeatureFunc func() Feature

var NewRatelimitFeatureFunc func() Feature

var NewRetryFeatureFunc func() Feature

var NewTestFeatureFunc func() Feature

var NewTimeoutFeatureFunc func() Feature

var NewCalculatorEntityFunc func(client *UkCommercialMortgageRateIndexSDK, entopts map[string]any) UkCommercialMortgageRateIndexEntity

var NewEnquiryEntityFunc func(client *UkCommercialMortgageRateIndexSDK, entopts map[string]any) UkCommercialMortgageRateIndexEntity

var NewMcpEntityFunc func(client *UkCommercialMortgageRateIndexSDK, entopts map[string]any) UkCommercialMortgageRateIndexEntity

