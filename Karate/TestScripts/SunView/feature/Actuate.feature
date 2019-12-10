Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

  @qa @uat @prod @enabled
  Scenario: Check Actuate is up and running from SunView
  
    Given url actuateURL
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'Information&nbsp;Console&nbsp;-&nbsp;[Login&nbsp;screen]'
    And match response contains 'Volume profile:'
    And match response contains 'User name:'
    And match response contains 'Password:'