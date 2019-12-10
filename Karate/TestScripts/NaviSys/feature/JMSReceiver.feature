Feature: Integration Checkpoints for NaviSys

  Background:
    * url baseURL
    
@dev @qa @uat @prod
  Scenario: Check JMSReceiver is up and running
  
    Given url baseURL
    And path 'JMSReceiver/services/JMSReceiver'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'JMSReceiver'
    And match response contains 'Hi there, this is a Web service!'
    
