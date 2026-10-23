# UkCommercialMortgageRateIndex SDK utility registration
require_relative '../core/utility_type'
require_relative 'clean'
require_relative 'done'
require_relative 'make_error'
require_relative 'feature_add'
require_relative 'feature_hook'
require_relative 'feature_init'
require_relative 'fetcher'
require_relative 'make_fetch_def'
require_relative 'make_context'
require_relative 'make_options'
require_relative 'make_request'
require_relative 'make_response'
require_relative 'make_result'
require_relative 'make_point'
require_relative 'make_spec'
require_relative 'make_url'
require_relative 'param'
require_relative 'prepare_auth'
require_relative 'prepare_body'
require_relative 'prepare_headers'
require_relative 'prepare_method'
require_relative 'prepare_params'
require_relative 'prepare_path'
require_relative 'prepare_query'
require_relative 'graphql'
require_relative 'result_basic'
require_relative 'result_body'
require_relative 'result_headers'
require_relative 'transform_request'
require_relative 'transform_response'

UkCommercialMortgageRateIndexUtility.registrar = ->(u) {
  u.clean = UkCommercialMortgageRateIndexUtilities::Clean
  u.clean_add = UkCommercialMortgageRateIndexUtilities::CleanAdd
  u.clean_explain = UkCommercialMortgageRateIndexUtilities::CleanExplain
  u.done = UkCommercialMortgageRateIndexUtilities::Done
  u.make_error = UkCommercialMortgageRateIndexUtilities::MakeError
  u.feature_add = UkCommercialMortgageRateIndexUtilities::FeatureAdd
  u.feature_hook = UkCommercialMortgageRateIndexUtilities::FeatureHook
  u.feature_init = UkCommercialMortgageRateIndexUtilities::FeatureInit
  u.fetcher = UkCommercialMortgageRateIndexUtilities::Fetcher
  u.make_fetch_def = UkCommercialMortgageRateIndexUtilities::MakeFetchDef
  u.make_context = UkCommercialMortgageRateIndexUtilities::MakeContext
  u.make_options = UkCommercialMortgageRateIndexUtilities::MakeOptions
  u.make_request = UkCommercialMortgageRateIndexUtilities::MakeRequest
  u.make_response = UkCommercialMortgageRateIndexUtilities::MakeResponse
  u.make_result = UkCommercialMortgageRateIndexUtilities::MakeResult
  u.make_point = UkCommercialMortgageRateIndexUtilities::MakePoint
  u.make_spec = UkCommercialMortgageRateIndexUtilities::MakeSpec
  u.make_url = UkCommercialMortgageRateIndexUtilities::MakeUrl
  u.param = UkCommercialMortgageRateIndexUtilities::Param
  u.prepare_auth = UkCommercialMortgageRateIndexUtilities::PrepareAuth
  u.prepare_body = UkCommercialMortgageRateIndexUtilities::PrepareBody
  u.prepare_headers = UkCommercialMortgageRateIndexUtilities::PrepareHeaders
  u.prepare_method = UkCommercialMortgageRateIndexUtilities::PrepareMethod
  u.prepare_params = UkCommercialMortgageRateIndexUtilities::PrepareParams
  u.prepare_path = UkCommercialMortgageRateIndexUtilities::PreparePath
  u.prepare_query = UkCommercialMortgageRateIndexUtilities::PrepareQuery
  u.graphql_body = UkCommercialMortgageRateIndexUtilities::GraphqlBody
  u.graphql_errors = UkCommercialMortgageRateIndexUtilities::GraphqlErrors
  u.result_basic = UkCommercialMortgageRateIndexUtilities::ResultBasic
  u.result_body = UkCommercialMortgageRateIndexUtilities::ResultBody
  u.result_headers = UkCommercialMortgageRateIndexUtilities::ResultHeaders
  u.transform_request = UkCommercialMortgageRateIndexUtilities::TransformRequest
  u.transform_response = UkCommercialMortgageRateIndexUtilities::TransformResponse
}
