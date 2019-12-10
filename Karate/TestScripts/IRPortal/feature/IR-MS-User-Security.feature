Feature: Integration Checkpoints for IR-MS-User-Security
	
	Background:
		* url baseURL	
    * configure ssl = true
  
  @dev @qa @prod @enabled  
  Scenario Outline: Get Role details for one application
										#Need the appName for testing
										
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/role/<appName>'
    When method get
    Then status 404
    #Then status 200
    #And match response contains { role: '#present' }
    #And match response contains { members: '#present' }
    
   	Examples:
   	|appName 	|
    |IRPORTAL	|
   

   @dev @qa @enabled
   Scenario Outline: Retrieve the user details from MF_USER_DETAILS table by passing LAN ID
  
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/user/<userID>'
    When method get
    Then status 200
    #Then match $ contains {lanID: '#present'}
    And match response contains { lanID: '#present' }
    
   Examples:
   |userID 		|
   |gpanda		|
   #|cshrimal	|
   
   
   @prod @enabled
   Scenario Outline: Retrieve the user details from MF_USER_DETAILS table by passing LAN ID
  									 This is Negative test case
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/user/<userID>'
    When method get
    Then status 404
    #Then match $ contains {lanID: '#present'}
    #And match response contains { lanID: '#present' }
    
   Examples:
   |userID 		|
   |gpanda		|
   #|cshrimal	|
   
         
   @dev @qa @enabled
   Scenario Outline: Retrieves the user details from MF_USER_DETAILS table by passing Domain and LAN ID
       
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/user/<Domain>/<userID>'
    When method get
    Then status 200
    #Then match $ contains {lanID: <lanID>}
    And match response contains { lanID: '#present' }
    
   Examples:
   |lanID 						|Domain		|userID		|
   |R1-CORE\\gpanda 	|R1-CORE	|gpanda		|
   #|R1-CORE\\cshrimal	|R1-CORE	|cshrimal	|
   
   
   @prod @enabled
   Scenario Outline: Retrieves the user details from MF_USER_DETAILS table by passing Domain and LAN ID
       							 This is Negative test case
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/user/<Domain>/<userID>'
    When method get
    Then status 404
    #Then match $ contains {lanID: <lanID>}
    #And match response contains { lanID: '#present' }
    
   Examples:
   |lanID 						|Domain		|userID		|
   |R1-CORE\\gpanda 	|R1-CORE	|gpanda		|
   #|R1-CORE\\cshrimal	|R1-CORE	|cshrimal	|