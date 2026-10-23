
import { test, describe } from 'node:test'
import { equal } from 'node:assert'


import { UkCommercialMortgageRateIndexSDK } from '..'


describe('exists', async () => {

  test('test-mode', () => {
    const testsdk = UkCommercialMortgageRateIndexSDK.test()
    equal(testsdk instanceof UkCommercialMortgageRateIndexSDK, true,
      'UkCommercialMortgageRateIndexSDK.test() must return a client synchronously')
  })

})
