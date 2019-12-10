Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

	@dev @qa @uat @prod @enabled  
	Scenario: Get Note from SunView by ID
  
    Given url baseURL
    And path '/workflowintg/note'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
	  And match response contains 'Sunview Notes'
	  And match response contains '#(baseURL)'
	  
