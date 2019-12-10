Feature: Integration Checkpoints for NaviSys


  Background:
    * url baseURL
    
  @uat @prod @enabled
  Scenario: Check Product Compare is up and running
  
  	Given url baseURL
  	And path 'prod-master/login.html'
		When method get
    Then status 200
    And match header Content-Type contains 'text/html'
  	And match response contains 'Product Compare Tool -- Navisys'
  	And match response contains 'showLoginWindow'
 
