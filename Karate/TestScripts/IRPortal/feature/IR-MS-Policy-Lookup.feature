Feature: Integration Checkpoints for IR-MS-Policy-Lookup API

	Background:
	 	* url baseURL
	 	* configure ssl = true
	 	
  @dev @qa @prod @enabled  
	Scenario Outline: Get Policy look up data
  
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/policylookup/<PolicyNo>/<CompanyCD>'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response[0] contains { policyNumber: '#present' }
    	
		Examples:
		|PolicyNo		|CompanyCD	|
		|VV200012		|WNL				|