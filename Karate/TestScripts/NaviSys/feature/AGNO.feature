Feature: Integration Checkpoints for NaviSys

Background:
    * url baseURL
    
@dev @qa @uat @prod
  Scenario: Check NaviSys-AGNO is up and running
  
    Given url baseURL
    And path 'AGNOService'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'AGNO Agent ID Generation'
    And match response contains 'Company Code'
    And match response contains 'Producer ID'
    And match response contains 'submit'  
  
  