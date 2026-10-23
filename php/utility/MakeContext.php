<?php
declare(strict_types=1);

// UkCommercialMortgageRateIndex SDK utility: make_context

require_once __DIR__ . '/../core/Context.php';

class UkCommercialMortgageRateIndexMakeContext
{
    public static function call(array $ctxmap, ?UkCommercialMortgageRateIndexContext $basectx): UkCommercialMortgageRateIndexContext
    {
        return new UkCommercialMortgageRateIndexContext($ctxmap, $basectx);
    }
}
