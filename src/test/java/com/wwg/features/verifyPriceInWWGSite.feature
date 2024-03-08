Feature: Verify Price In Site
  Background:
    * def PriceALUDataFile = sharedBasePath+ '/com/wwg/test-data/PingProd-alu-price-test.csv'
    * configure driver = { type: 'chrome', addOptions: ["--remote-allow-origins=*"] }

  Scenario Outline: Verify Price for WWG ALU : '<ALU>'
    * string siteUrl = "https://www.worldwidegolfshops.com/"+ '<ALU>'+ "?_q=" + '<ALU>'+ "&map=ft"
    Given driver siteUrl
    And maximize()
    And delay(6000)
   * def plpPriceElement = "//span[@class='vtex-product-price-1-x-sellingPriceRangeUniqueValue vtex-product-price-1-x-sellingPriceRangeUniqueValue--product-search-price']//span[@class='vtex-product-price-1-x-currencyContainer vtex-product-price-1-x-currencyContainer--product-search-price']"
    * retry(10).waitFor(plpPriceElement)
    And def plpPrice = text(plpPriceElement)
    And print plpPrice
    * match plpPrice == "$"+'<PRICE>'
    And click(plpPriceElement)
    * def pdpPriceElement = "//span[@class='vtex-store-components-3-x-sellingPrice vtex-store-components-3-x-sellingPriceValue t-heading-2-s dib ph2 vtex-store-components-3-x-price_sellingPrice vtex-store-components-3-x-price_sellingPrice--product-page-price']//span[@class='vtex-store-components-3-x-currencyContainer vtex-store-components-3-x-currencyContainer--product-page-price']"
    * retry(10).waitFor(pdpPriceElement)
    And def pdpPrice = text(pdpPriceElement)
    And print pdpPrice
    * match pdpPrice == "$"+'<PRICE>'

    Examples:
      | read(PriceALUDataFile) |


