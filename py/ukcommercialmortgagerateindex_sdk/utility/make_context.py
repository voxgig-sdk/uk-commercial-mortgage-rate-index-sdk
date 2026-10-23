# UkCommercialMortgageRateIndex SDK utility: make_context

from ukcommercialmortgagerateindex_sdk.core.context import UkCommercialMortgageRateIndexContext


def make_context_util(ctxmap, basectx):
    return UkCommercialMortgageRateIndexContext(ctxmap, basectx)
