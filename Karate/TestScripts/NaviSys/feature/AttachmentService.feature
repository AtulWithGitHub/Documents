Feature: Integration Checkpoints for NaviSys

  Background:
    * url baseURL
    
  @dev @qa @uat @prod @enabled
  Scenario: Check Attachment Service is up and running
  
    Given url attachmentURL
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'AttachmentServiceService'
    And match response contains 'Hello! This is an Axis2 Web Service!'
 
