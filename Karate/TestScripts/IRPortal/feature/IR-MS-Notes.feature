Feature: Integration Checkpoints for IR-MS-Notes API

	Background:
	 	* url baseURL
	 	* configure ssl = true
	 	
	@dev @qa @prod @enabled
  Scenario Outline: Get Note details by passing Note ID
						This is Negative test case
	
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/notes/<noteID>'
    When method get
    Then status 404
    #And match header Content-Type contains 'application/json'
		#And match response[0] contains { keyTypeCode: '#present' }

		Examples:
		|noteID	|
		|9			|
			
			
	@prod @enabled
  Scenario Outline: Get Note details by passing Note ID
						Checking Note details for noteID = 1
	
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/notes/<noteID>'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response contains { keyTypeCode: '#present' }

		Examples:
		|noteID	|
		|1			|
			
  @dev @qa @prod @enabled  
	Scenario Outline: Get Notes Associated to policy by passing CompPolKey
  
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/notes/policy/<CompPolKey>'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { keyTypeCode: '#present' }
    	
		Examples:
		|CompPolKey|
		|WNLVV200012OAS|
		
		
