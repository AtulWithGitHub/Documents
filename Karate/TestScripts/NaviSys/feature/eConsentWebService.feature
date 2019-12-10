Feature: Integration Checkpoints for NaviSys

  Background:
    * url baseURL
    
 @dev @qa @uat @prod
  Scenario: Check eConsent WebService is up and running
  
  	Given url baseURL
  	And path 'eConsentWebService/'
		When method get
    Then status 200
    And match header Content-Type contains 'text/html'
  	And match response contains 'This is my JSP page.'
  	     
