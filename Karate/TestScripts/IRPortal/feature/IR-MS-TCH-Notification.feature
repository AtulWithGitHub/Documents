Feature: Integration Checkpoints for IR-MS-TCH-Notification
	
	Background:
		* url baseURL	
    * configure ssl = true
  
  
  @dev @qa @prod @enabled
  Scenario: Get email configuration details for all
	
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/email/'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { appID: '#present' }
	
	
	@dev @qa @prod @enabled
  Scenario: Get email configuration details by Application ID and Communication ID
  
  	Given url baseURL
    And path '/WebServices/NetCore/apigateway/email/'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response[0] contains { appID: '#present' }
	
		* def appID = response[0].appID
    * print 'App ID = '+ appID
		* def communicationID = response[0].communicationID
    * print 'Communication ID = '+ communicationID
    
  	Given url baseURL
    And path '/WebServices/NetCore/apigateway/email/' + appID + '/' + communicationID
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
		And match response contains { appID: '#present' }
