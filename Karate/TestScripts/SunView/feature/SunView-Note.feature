Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

	@dev @qa @uat @prod @enabled  
	Scenario Outline: Get Note from SunView by ID
  									This is negative Test Scenario
  
    Given url baseURL
    And path '/workflowintg/api/v1/notes/sunview/<noteID>'
    When method get
    Then status 500
    And match header Content-Type contains 'application/json'
	  And match response contains {message:Internal Error}
	  
	  Examples:
	  |noteID	  |
	  |11111111111|	