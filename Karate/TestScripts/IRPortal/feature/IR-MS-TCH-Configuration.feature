Feature: Integration Checkpoints for IR-MS-TCH-Configuration
	
	Background:
		* url baseURL	
    * configure ssl = true
  
  @dev @prod @enabled
  Scenario: Get list of detail records
    
   	Given url baseURL
    And path '/WebServices/NetCore/apigateway/PropertyDetail/'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response contains 'propertySequenceId'
		
	
	@qa @enabled
  Scenario: Get list of detail records
    
   	Given url baseURL
    And path '/WebServices/NetCore/apigateway/PropertyDetail/'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { propertySequenceId: '#present' }
		
		* def propertySequenceId = response[0].propertySequenceId
		* print 'propertySequenceId = ' + propertySequenceId
		
		
  @dev @prod @enabled
	Scenario: Get Property detail collection for specific property ID
						Currently propertySequenceId = 1 for dev and prod environment, which is valid
						
		#Given url baseURL
    #And path '/WebServices/NetCore/apigateway/PropertyDetail/'    
    #When method get
    #Then status 200
    #And match header Content-Type contains 'application/json'
    #And match response contains { propertySequenceId: '#present' }
    
    * def propertySequenceId = 1 
    * print 'Property Sequence ID = '+ propertySequenceId
    
   	Given url baseURL
    And path '/WebServices/NetCore/apigateway/PropertyDetail/' + propertySequenceId    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response[0] contains { propertySequenceId: '#present' }
		
		* def output = response[0].propertySequenceId
		* print 'propertySequenceId = ' + output
		
		@qa @enabled
	  Scenario: Get Property detail collection for specific property ID
						
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/PropertyDetail/'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { propertySequenceId: '#present' }
		
		* def propertySequenceId = response[0].propertySequenceId
		* print 'propertySequenceId = ' + propertySequenceId
    
    
   	Given url baseURL
    And path '/WebServices/NetCore/apigateway/PropertyDetail/' + propertySequenceId    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response[0] contains { propertySequenceId: '#present' }
		

		