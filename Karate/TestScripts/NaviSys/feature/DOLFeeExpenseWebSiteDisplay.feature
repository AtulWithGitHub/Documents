Feature: Integration Checkpoints for NaviSys

Background:
    * url baseURL
    
@qa @uat @prod
  Scenario: Check DOLFee Expense Service is up and running
  
    Given url baseURL
    And path 'DOLFeeExpenseWebsiteDisplay/index.html'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'DOLFeeExpenseWebsiteDisplay Got Deployed'

      
