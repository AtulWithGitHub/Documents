Feature: Integration Checkpoints for NaviSys

  Background:
    * url baseURL
    
@qa @uat @prod
  Scenario: Check Partner Profile is up and running
  
    Given url baseURL
    And path 'PartnerProfile/'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'partnerLogoBlueBG'
    And match response contains 'txtUserName'     
    And match response contains 'txtPassword'
    And match response contains 'submit'
    
