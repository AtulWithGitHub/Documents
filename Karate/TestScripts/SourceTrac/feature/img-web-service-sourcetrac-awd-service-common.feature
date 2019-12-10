Feature: Integration Checkpoints for SourceTrac

  Background:
    * url baseURL
    
@dev @qa
  Scenario: Check AWDService is up and running
  
    Given url baseURL
    And path '/SSAWDInteract.svc'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'SSAWDInteract Service'