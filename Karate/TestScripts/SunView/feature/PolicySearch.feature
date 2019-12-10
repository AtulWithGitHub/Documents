Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

	@dev @enabled  
	Scenario Outline: Check for Policy Search is working
  									This is negative test case
  									
    Given url baseURL
    And path '/workflowintg/api/v1/soaptorest/policylocation/search/<policyNumber>'
    When method get
    Then status 500
    And match header Content-Type contains 'application/json'
	  And match response contains {exception: 'java.io.FileNotFoundException'}
	  
	  Examples:
	  |policyNumber|
	  |00000003|
	  
	  
	@qa @uat @prod @enabled  
	Scenario Outline: Check for Policy Search is working
  									
    Given url baseURL
    And path '/workflowintg/api/v1/soaptorest/policylocation/search/<policyNumber>'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
	  And match response contains {code:200}
	  And match response contains {status:'OK'}
	  And match response contains {message:'Records found'}
	  
	  Examples:
	  |policyNumber|
	  |00000003|