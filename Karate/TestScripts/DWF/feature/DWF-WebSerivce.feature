Feature: Check if DWF-WebService is running on 1 server per environment
	
	Background:
		* url baseURL	
    * configure ssl = true
    
    * print baseURL
  
  @qa @uat @prod @enabled
  Scenario: Check DWF-WebService is up and running
  
   	Given url baseURL
    When method get
    Then status 200
    And match header Content-Type contains 'application/xml'
    And match response contains 'com.sun.jersey.api.NotFoundException'
    
  @uat @enabled
  Scenario Outline: Check DWF-WebService is NOT running
  
  	* replace notUpURL.srno = '<no>'
  	* print notUpURL
  	
   	Given url notUpURL
    When method get
    Then status 200
    And match header Content-Type !contains 'application/xml'
    And match response contains 'NaviSys Front Office Suite - Sign in'
    
   Examples:
   |no	|
   |2		|
   |3		|
   
  @prod @enabled
  Scenario Outline: Check DWF-WebService is NOT running
  
  	* replace notUpURL.srno = '<no>'
  	* print notUpURL
  	
   	Given url notUpURL
    When method get
    Then status 200
    And match header Content-Type !contains 'application/xml'
    And match response contains 'NaviSys Front Office Suite - Sign in'
    
   Examples:
   |no	|
   |3		|
   |4		|
   |5		|
   |6		|
   |7		|
