Feature: Check Claims-Tracker-Website is up and running

	Background:
	 	* url baseURL
	 	* configure ssl = true
	 	
  @dev @qa @prod @enabled  
	Scenario: Check for Claims-Tracker-Website is Up and Running
  					This is negative test
  					
    Given url baseURL
    And path '/ClaimsTracker/'
    When method get
    Then status 401
    And match header Content-Type contains 'text/html'
    And match response contains '401 - Unauthorized: Access is denied due to invalid credentials.'
		And match response contains 'You do not have permission to view this directory or page using the credentials that you supplied.'
			
	@dev @qa @prod @enabled
	Scenario: Check for Policy Search is Up and Running
    				Currently only checking if the page display without error.
    				If need to check some services, provide details
    					
    Given url baseURL
    And path '/WebServices/Claims/PolicySearch/PolicySearch.svc'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'PolicySearch Service'
		And match response contains '#(baseURL)'

#failing for production as the http and https issue

	@dev @enabled
	Scenario: Check for Claim Tracker Service is Up and Running
    				Currently only checking if the page display without error.
    				If need to check some services, provide details
    				
    Given url baseURL
    And path '/WebServices/Claims/ClaimTracker.Service/ClaimTrackerService.svc'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'ClaimTrackerService Service'
		And match response contains '#(baseURL)'

	@qa @prod @enabled
	Scenario: Check for Claim Tracker Service is Up and Running
    				This is negative test case
    					
    Given url baseURL
    And path '/WebServices/Claims/ClaimTracker.Service/ClaimTrackerService.svc'
    When method get
    Then status 401
    And match header Content-Type contains 'text/html'
    And match response contains '401 - Unauthorized: Access is denied due to invalid credentials.'
		And match response contains 'You do not have permission to view this directory or page using the credentials that you supplied.'
				
				
		
			  		  