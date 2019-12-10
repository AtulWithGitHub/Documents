Feature: Integration Checkpoints for SunView WebClient

  Background:
    * url baseURL
    

  @dev @qa @uat @prod @enabled
  Scenario: Check SunView Services using getPolicy
  
    Given url baseURL
    And path '/sunviewservices/getpolicy'
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'SERVICE READY'
	  


	  


		  