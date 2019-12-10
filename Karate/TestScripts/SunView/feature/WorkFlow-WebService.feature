Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

  @dev @qa @uat @prod @enabled
  Scenario: WorkFlow WebService Availability
  
    Given url baseURL
    And path '/workflowwebservices/'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'WebService Explorer Test - WorkFlow'
	  And match response contains 'Agent SSN'