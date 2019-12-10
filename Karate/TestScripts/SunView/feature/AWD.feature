Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

	@dev @enabled  
	Scenario Outline: Get Document from AWD by Document ID
  									This is negative test case
  									
    Given url baseURL
    And path '/workflowintg/api/v1/documents/<target>/<objectId>/<type>'
    When method get
    Then status 500
    And match header Content-Type contains 'application/json'
	  And match response contains {code:'400'}
	  
	  Examples:
	  |target	|objectId											|type|
	  |awd		|2018-08-13-09.09.22.695860O01|base|
	  
	@qa @uat @prod @enabled  
	Scenario: Get Document from AWD by Document ID
  									
    Given url baseURL
    And path '/workflowintg/api/v1/documents/awd/test/base'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
	  And match response contains {code:200}
	  And match response contains {status:'OK'}
	  And match response contains {message: 'No object found with objectId test'}
	  
