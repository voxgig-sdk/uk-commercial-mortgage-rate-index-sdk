<?php
declare(strict_types=1);

// UkCommercialMortgageRateIndex SDK utility: result_headers

class UkCommercialMortgageRateIndexResultHeaders
{
    public static function call(UkCommercialMortgageRateIndexContext $ctx): ?UkCommercialMortgageRateIndexResult
    {
        $response = $ctx->response;
        $result = $ctx->result;
        if ($result) {
            if ($response && is_array($response->headers)) {
                $result->headers = $response->headers;
            } else {
                $result->headers = [];
            }
        }
        return $result;
    }
}
