Feature: Navisys PDF Service Validation

  Background:
    * url baseURL
    
  @uat @prod @enabled
  Scenario: Validate PDF service returns appropriate http status code
    Given url baseURL
    And path 'pdfservices/v1/downloadfile'
    And request read('data/PDFService-RequestBody.json')
    When method post
    Then status 200
    And match header Content-Type == 'application/pdf'  