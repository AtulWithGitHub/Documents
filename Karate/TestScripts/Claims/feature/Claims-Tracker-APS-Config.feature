Feature: Check Automated Payment System Config (APS) is up and running

	Background:
	 	* url baseURL
	 	* configure ssl = true
	 	
		
  @dev @qa @prod @enabled  
	Scenario: Check for Automated Payment System Config (APS) is Up and Running
  					This is negative test case
  					
    Given url baseURL
    And path '/APSConfig/'
    When method get
    Then status 401
    And match header Content-Type contains 'text/html'
    And match response contains '401 - Unauthorized: Access is denied due to invalid credentials.'
		And match response contains 'You do not have permission to view this directory or page using the credentials that you supplied.'						