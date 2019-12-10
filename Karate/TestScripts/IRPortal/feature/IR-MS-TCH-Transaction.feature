Feature: Integration Checkpoints for IR-MS-TCH-Transaction
	
	Background:
		* url baseURL	
    * configure ssl = true
  
  @dev @qa @prod @enabled
  Scenario: Get configuration details for all applications
  
   	Given url baseURL
    And path '/WebServices/NetCore/apigateway/application/'    
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.[0].applicationID == 1
    
    
  @dev @qa @prod @enabled
  Scenario: Get configuration details for one application
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/application/1'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.applicationID == 1
    And match response.lineOfBusiness == 'FA-WNL'
    And match response.businessUnit == 'CLAIMS'
    And match response.subBusinessUnit == 'CLAIMS'
    
    
	@dev @qa @prod @enabled
  Scenario: Get Queue Details
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def itemNumber = response[0].itemNumber
    * print 'Transaction ID = '+ itemNumber
    
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/queue/transaction/'+itemNumber
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def queueID = response.id
    * print 'Queue ID = ' + queueID
    
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/queue/'+queueID
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.id == queueID
    And match response.transactionID == itemNumber
    
	
	@dev @qa @prod @enabled
  Scenario: Get Queue Details by Transaction ID
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def itemNumber = response[0].itemNumber
    * print "Transaction ID = ' + itemNumber
    
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/queue/transaction/'+itemNumber
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.transactionID == itemNumber
	
	
	@dev @qa @prod @enabled
  Scenario: Get Next QueueID for the Transaction ID
	
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def itemNumber = response[0].itemNumber
    * print 'Transaction ID = '+ itemNumber
    
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/queue/transaction/'+itemNumber
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def queueID = response.id
    * print 'Queue ID = ' + queueID
    
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/queue/nextqueueid/' + itemNumber + '/' + queueID
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
	
	
	@dev @qa @prod @enabled
  Scenario: Get Review details
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def itemNumber = response[0].itemNumber
    * print 'Transaction ID = '+ itemNumber
    
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/queue/transaction/'+itemNumber
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def reviewID = response.reviewID
    * print 'Review ID = ' + reviewID
    
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/review/' + reviewID 
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.transactionID == itemNumber
    
	
	@dev @qa @prod @enabled
  Scenario: Get Transaction details
	
		Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def itemNumber = response[0].itemNumber
    * print 'Transaction ID' + itemNumber
    
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/'+itemNumber
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.id == itemNumber
	
	
	@dev @qa @prod @enabled
  Scenario: Check QC Eligibility for a Transaction
	
	Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def itemNumber = response[0].itemNumber
    * print 'Transaction ID = ' + itemNumber
    
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/qceligible/'+itemNumber
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response contains 'true'
    
    
	@dev @qa @prod @enabled
  Scenario: Get Approved Transactions for Current Day
  
  	Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    #And match response.[0].itemNumber == 42404
    #And match response.applicationID == 1
    #And match response.lineOfBusiness == 'FA-WNL'
    #And match response.businessUnit == 'CLAIMS'
    #And match response.subBusinessUnit == 'CLAIMS'
  
	@dev @qa @prod @enabled
  Scenario: Get Transaction details by Queue ID

  	Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/ApprovedTransactions'
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def itemNumber = response[0].itemNumber
    * print 'Transaction ID = '+ itemNumber
    
	  Given url baseURL
    And path '/WebServices/NetCore/apigateway/queue/transaction/'+itemNumber
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    
    * def queueID = response.id
    * print 'Queue ID = ' + queueID
    
    Given url baseURL
    And path '/WebServices/NetCore/apigateway/transaction/searchbyqueueid/' + queueID
    When method get
    Then status 200
    And match header Content-Type contains 'application/json'
    And match response.id == itemNumber