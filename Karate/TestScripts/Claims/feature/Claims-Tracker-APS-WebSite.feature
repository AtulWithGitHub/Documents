Feature: Check Claims-Tracker-APS-WebSite is up and running

	Background:
	 	* url baseURL
	 	* configure ssl = true
	 	
	 	
  @dev @qa @prod @enabled  
	Scenario: Check for Claims-Tracker-APS-WebSite is Up and Running
  					This is negative test case
  					
    Given url baseURL
    And path '/aps'
    When method get
    Then status 401
    And match header Content-Type contains 'text/html'
    And match response contains '401 - Unauthorized: Access is denied due to invalid credentials.'
		And match response contains 'You do not have permission to view this directory or page using the credentials that you supplied.'
			
	@dev @qa @prod @enabled  
	Scenario: Check for Integration Service is Up and Running
  					Here we are just checking if we can get the WSDL.
  					If any functionality need to check please provide details
  					
    Given url integrationSvcURL + '?wsdl'
    When method get
    Then status 200
    And match header Content-Type contains 'text/xml'
    And match response contains '#(integrationSvcURL)'
			
	@dev @qa @prod @enabled  
	Scenario: Check for Create Request Item is Up and Running
  					Here we are just checking if we can get the WSDL.
  					If any functionality need to check please provide details
  					
    Given url createRequestItemURL + '?wsdl'
    When method get
    Then status 200
    And match header Content-Type contains 'text/xml'
    And match response contains '#(createRequestItemURL)'
		  
	@dev @qa @prod @enabled  
	Scenario: Check for Pay Service is Up and Running
  					Here we are just checking if we can get the WSDL.
  					If any functionality need to check please provide details
  					  					
    Given url payServiceURL + '?wsdl'
    When method get
    Then status 200
    And match header Content-Type contains 'text/xml'
    And match response contains '#(payServiceURL)'		  
    
	@dev @enabled  
	Scenario: Check for TI Wrapper is Up and Running
  					Here we are just checking if we can get the WSDL.
  					If any functionality need to check please provide details
  					  					
    Given url TIWrapperURL + '?wsdl'
    When method get
    Then status 200
    And match header Content-Type contains 'text/xml'
    And match response contains '#(TIWrapperURL)'		  
        