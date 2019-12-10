Feature: SARM Authenitcation

  Background:
    * url baseURL
    
  @qa @uat @prod @enabled
  Scenario: Check SARMAuthenication is up and running
  
  	Given url baseURL
  	And path 'SARMAuthentication/'
		When method get
    Then status 200
    And match header Content-Type contains 'text/html'
  	And match response contains 'This SARMAuthentication authenticate Against Multi-domain'
  	And match response contains 'userID'
  	And match response contains  'password'
  	And match response contains 'submit'
  	
