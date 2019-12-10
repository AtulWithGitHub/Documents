Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

  @dev @qa @uat @prod @enabled
  Scenario: Validate SWIS Web Service is up and running 
  
    Given url baseURL
    And path '/workflowintg/release'
    When method get
    Then status 200
    And match header Content-Type contains 'text/plain'
	  And match response contains 'Workflow Integration Services'
	  And match response contains SWISText