Feature: Integration Checkpoints for IR-MS-TCH-Portal-Interface
	
	Background:
		* url baseURL	
    * configure ssl = true
  
  @dev @qa @prod @enabled
  Scenario: Get Checklist Items as Array
  
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/1'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { parentId: '#present' }
  
	@dev @qa @prod @enabled
  Scenario: Get Checklist Items as Tree
	
	Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/Tree/1'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { key: '#present' }
	
	@dev @qa @prod @enabled
  Scenario: Get Checklist Item Detail with Selection
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/Tree/1'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { key: '#present' }
		
		* def key = response[0].key
		* def value = response[0].value
		
    * print 'Transaction ID = ' + key
    * print 'Business Key = ' + value
		
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/' + key + '/' + value    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { mapId: '#present' } 
	
	
	@dev @qa @prod @enabled
  Scenario: Get Selected Checklist Items and Values
						This is Negative test case

		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/Tree/1'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { key: '#present' }
		
		* def key = response[0].key
		* def value = response[0].value
		
    * print 'Transaction ID = ' + key
    * print 'Business Key = ' + value
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/SelectedItems/' + value    
    When method get
    Then status 404
    #And match header Content-Type contains 'application/json'
		#And match response[0] contains { mapId: '#present' } 
	
	@dev @qa @prod @enabled
  Scenario: Get Selected Item Notes
						This is Negative test case

		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/Tree/1'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { key: '#present' }
		
		* def key = response[0].key
		* def value = response[0].value
		
    * print 'Transaction ID = ' + key
    * print 'Business Key = ' + value
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/SelectedNotes/' + value    
    When method get
    Then status 404
    #And match header Content-Type contains 'application/json'
		#And match response[0] contains { mapId: '#present' } 		
						
	@dev @qa @prod @enabled
  Scenario: Get Soft Failure
						This is Negative test case

		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/Tree/1'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { key: '#present' }
		
		* def key = response[0].key
		* def value = response[0].value
		
    * print 'Transaction ID = ' + key
    * print 'Business Key = ' + value
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/Checklist/SoftFailure/' + value    
    When method get
    Then status 404
    #And match header Content-Type contains 'application/json'
		#And match response[0] contains { mapId: '#present' }