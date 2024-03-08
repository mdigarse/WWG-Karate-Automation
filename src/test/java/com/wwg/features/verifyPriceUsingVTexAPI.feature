Feature: Create Users
  Background:
    * def msUrl = 'https://api.vtex.com'
     * def PingDataFile = sharedBasePath+ '/com/wwg/test-data/PingProd-alu-price.csv'
    * def ScottyCameronDataFile = sharedBasePath+ '/com/wwg/test-data/SCOTTYCAMERON-alu-price.csv'
    * def EccoDataFile = sharedBasePath+ '/com/wwg/test-data/EccoWWG-Price.csv'
    * def TourXDataFile = sharedBasePath+ '/com/wwg/test-data/TourX-Price.csv'
    * def BettinardiDataFile = sharedBasePath+ '/com/wwg/test-data/BettinardiPrice.csv'

  Scenario Outline: Verify Price for WWG ALU : '<ALU>'
    Given url msUrl
    And path '/worldwidegolf/pricing/prices/' + '<ALU>'
    And header Content-Type = 'application/json'
    And header X-VTEX-API-AppKey = AppKeyProd
    And header X-VTEX-API-AppToken = AppTokenProd
    When method GET
    Then status 200
#    * print response
    And match response.basePrice == <WWGWEB>

    Examples:
#      | read(PingDataFile) |
#      | read(ScottyCameronDataFile) |
#      |read(EccoDataFile)|
#      |read(TourXDataFile)|
      |read(BettinardiDataFile)|


  Scenario Outline: Verify Price for BG ALU : '<ALU>'
    Given url msUrl
    And path '/budgetgolf/pricing/prices/' + '<ALU>'
    And header Content-Type = 'application/json'
    And header X-VTEX-API-AppKey = AppKeyProd
    And header X-VTEX-API-AppToken = AppTokenProd
    When method GET
    Then status 200
#    * print response
    And match response.basePrice == <WWGWEB>

    Examples:
#      | read(PingDataFile) |
#      | read(ScottyCameronDataFile) |
#      |read(EccoDataFile)|
#      |read(TourXDataFile)|
      |read(BettinardiDataFile)|