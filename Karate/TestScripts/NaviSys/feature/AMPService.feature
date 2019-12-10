Feature: Integration Checkpoints for NaviSys

Background:
    * url baseURL
    
  @dev @qa @uat @prod
  Scenario: Check AMP Service is up and running
  
    Given url baseURL
    And path 'AMPNavisys'
    When method get
    Then status 200
    And match header Content-Type contains 'text/plain'
    And match response contains 'Hello AMP Services'
    
