Feature: Check IR-Web-Claims-Tracker-Portal is up and running

	Background:
	 	* url baseURL
	 	* configure ssl = true
	 	
  @dev @qa @prod @enabled  
	Scenario: Check for IR-Web-Claims-Tracker-Portal is Up and Running
  					This is negative test
  					
    Given url baseURL
    And path '/CTPortal/'
    When method get
    Then status 401
    And match header Content-Type contains 'text/html'
    And match response contains '401 - Unauthorized: Access is denied due to invalid credentials.'
		And match response contains 'You do not have permission to view this directory or page using the credentials that you supplied.'
			
		  		  