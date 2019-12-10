Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

	@dev @qa @uat @prod @enabled  
	Scenario: Check for Policy Search WSDL 
  
    Given url baseURL
    And path '/workflowintg/ws/policies.wsdl'
    When method get
    Then status 200
    And match header Content-Type contains 'text/xml'
	  And match response contains '#(baseURL)'