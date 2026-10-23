# UkCommercialMortgageRateIndex SDK feature factory

from ukcommercialmortgagerateindex_sdk.feature.base_feature import UkCommercialMortgageRateIndexBaseFeature
from ukcommercialmortgagerateindex_sdk.feature.ratelimit_feature import UkCommercialMortgageRateIndexRatelimitFeature
from ukcommercialmortgagerateindex_sdk.feature.retry_feature import UkCommercialMortgageRateIndexRetryFeature
from ukcommercialmortgagerateindex_sdk.feature.test_feature import UkCommercialMortgageRateIndexTestFeature
from ukcommercialmortgagerateindex_sdk.feature.timeout_feature import UkCommercialMortgageRateIndexTimeoutFeature


_FEATURES = {
    "base": lambda: UkCommercialMortgageRateIndexBaseFeature(),
    "ratelimit": lambda: UkCommercialMortgageRateIndexRatelimitFeature(),
    "retry": lambda: UkCommercialMortgageRateIndexRetryFeature(),
    "test": lambda: UkCommercialMortgageRateIndexTestFeature(),
    "timeout": lambda: UkCommercialMortgageRateIndexTimeoutFeature(),
}


def _make_feature(name):
    factory = _FEATURES.get(name)
    if factory is not None:
        return factory()
    return _FEATURES["base"]()


# True when this SDK was generated with the named feature class - the
# constructor's tolerance for extend-carried features reads this (an
# active name with no generated class must not become a BaseFeature
# stray when an extend instance carries it).
def _has_feature(name):
    return name in _FEATURES
