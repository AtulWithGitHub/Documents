Feature: Integration Checkpoints for SourceTrac

  Background:
    * url baseURL
    
@dev @qa @uat @prod
  Scenario: Check NotificationGateway is up and running
  
    Given url baseURL
    And path '/NotificationGateWayService.svc'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'NotificationGateWayService Service'