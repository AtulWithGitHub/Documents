Feature: Integration Checkpoints for SourceTrac

  Background:
    * url baseURL
    
@dev @qa
  Scenario: Check AWDFileCopy is up and running
  
    Given url baseURL
    And path '/FileCopy.svc'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'FileCopy Service'