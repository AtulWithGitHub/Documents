Feature: Navisys Valic Online Admin Service Status Validation

  Background:
    * def uatURL1 = 'http://twgsascs0923002:10082/'
    * def uatURL2 = 'http://twgsasc2tm0067:10082/'
    * def prodURL1 = 'http://pwgsascs0923001:10082/'
    * def prodURL2 = 'http://pwgsascs0923002:10082/'
    
    * header Authorization = call read('/data/IR-MS-NaviSys-ValicOnline-Admin.js') { username: 'admin', password: 'admin' }
  	  
    
  @uat @enabled
  Scenario: Validate IR-MS-NaviSys-ValicOnline-Admin is Up and Running all the services 
  
    Given url uatURL1
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'twgsasc2tm0067.r1-core.r1.aig.net:config:10081'
    And match response contains 'twgsascs0923002.r1-core.r1.aig.net:config:10081'
    And match response contains 'twgsasc2tm0067.r1-core.r1.aig.net:discovery:10082'
    And match response contains 'twgsascs0923002.r1-core.r1.aig.net:discovery:10082'
    And match response contains 'twgsascs0923002.r1-core.r1.aig.net:gateway:10080'
    And match response contains 'twgsasc2tm0067.r1-core.r1.aig.net:gateway:10080'
    And match response contains 'policyarrangementifo:c60895624725f22ef14a32b1a631795d'
    And match response contains 'policyarrangementifo:b33e5bdf5483736e82e37009745267f6'
    And match response contains 'policycontractvalues:836cbb90a73c30c1cc61b8525e4d3964'
    And match response contains 'policycontractvalues:9175993017d5ff76299fc9fc8ed0e77f'
    And match response contains 'policyfundinfo:ad65b083c8d5bd078b611724f214bbe9'
    And match response contains 'policyfundinfo:10cfd04ac73d688283575419f9707643'
    And match response contains 'policyinquiryservice:0813e4f12964cdcfb2585b1b510a8935'
    And match response contains 'policyinquiryservice:25b33cdbc145c590dfbad1b8405c5963'
    And match response contains 'policyrider:1d0034d60658ada2d2d50ef4c88faf8e'
    And match response contains 'policyrider:eb0a33a6531b9c773b0fc7b8a0ca47cc'
    And match response contains 'policyroles:f131627f76a2c3ba028a7d0839df3cf6'
    And match response contains 'policyroles:d0e54504a664f0b3887270f130f67b3e'
    And match response contains 'zipkin:10411'
    
   @uat @enabled
  Scenario: Validate IR-MS-NaviSys-ValicOnline-Admin is Up and Running all the services 
  
    Given url uatURL2
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'twgsasc2tm0067.r1-core.r1.aig.net:config:10081'
    And match response contains 'twgsascs0923002.r1-core.r1.aig.net:config:10081'
    And match response contains 'twgsasc2tm0067.r1-core.r1.aig.net:discovery:10082'
    And match response contains 'twgsascs0923002.r1-core.r1.aig.net:discovery:10082'
    And match response contains 'twgsascs0923002.r1-core.r1.aig.net:gateway:10080'
    And match response contains 'twgsasc2tm0067.r1-core.r1.aig.net:gateway:10080'
    And match response contains 'policyarrangementifo:c60895624725f22ef14a32b1a631795d'
    And match response contains 'policyarrangementifo:b33e5bdf5483736e82e37009745267f6'
    And match response contains 'policycontractvalues:836cbb90a73c30c1cc61b8525e4d3964'
    And match response contains 'policycontractvalues:9175993017d5ff76299fc9fc8ed0e77f'
    And match response contains 'policyfundinfo:ad65b083c8d5bd078b611724f214bbe9'
    And match response contains 'policyfundinfo:10cfd04ac73d688283575419f9707643'
    And match response contains 'policyinquiryservice:0813e4f12964cdcfb2585b1b510a8935'
    And match response contains 'policyinquiryservice:25b33cdbc145c590dfbad1b8405c5963'
    And match response contains 'policyrider:1d0034d60658ada2d2d50ef4c88faf8e'
    And match response contains 'policyrider:eb0a33a6531b9c773b0fc7b8a0ca47cc'
    And match response contains 'policyroles:f131627f76a2c3ba028a7d0839df3cf6'
    And match response contains 'policyroles:d0e54504a664f0b3887270f130f67b3e'
    And match response contains 'zipkin:10411'  

    
  @prod @enabled
  Scenario: Validate IR-MS-NaviSys-ValicOnline-Admin is Up and Running all the services 
  
    Given url prodURL1
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:config:10081'
		And match response contains 'pwgsascs0923001.r1-core.r1.aig.net:config:10081'
		And match response contains 'pwgsascs0923001.r1-core.r1.aig.net:discovery:10082'
		And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:discovery:10082'
		And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:gateway:10080'
		And match response contains 'pwgsascs0923001.r1-core.r1.aig.net:gateway:10080'
		And match response contains 'policyarrangementifo:3bffe237478dfda54734a0279b4f6441'
		And match response contains 'policyarrangementifo:721aa31199bba78fe4d0dc6742a4473a'
		And match response contains 'policycontractvalues:064485f1516a574b130828e7c02fc132'
		And match response contains 'policycontractvalues:708063916c4c8ad148f5b19a58884ae9'
		And match response contains 'policyfundinfo:8ef1516901723d8f23b8e1c10aa202ea'
		And match response contains 'policyfundinfo:0e79783d067621b2719930316d6db835'
		And match response contains 'policyinquiryservice:9d1a262cf9be5d83751b2fc956fe06c1'
		And match response contains 'policyinquiryservice:12f049012e33c864c1a85f58b054487f'
		And match response contains 'policyrider:a8ea70427bbfecef25f377d183a11d8b'
		And match response contains 'policyrider:4dab3bba7c1a55415565c208502d441a'
		And match response contains 'policyroles:e654d7327235bd7311166e1757f9ed7e'
		And match response contains 'policyroles:11ff3d886ee2cd6be5d096f7f96f752f'
		And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:zipkin:10411'
    
  @prod @enabled
  Scenario: Validate IR-MS-NaviSys-ValicOnline-Admin is Up and Running all the services 
  
    Given url prodURL2
    When method get
    Then status 200
    And match header Content-Type contains 'text/html'
    And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:config:10081'
		And match response contains 'pwgsascs0923001.r1-core.r1.aig.net:config:10081'
		And match response contains 'pwgsascs0923001.r1-core.r1.aig.net:discovery:10082'
		And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:discovery:10082'
		And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:gateway:10080'
		And match response contains 'pwgsascs0923001.r1-core.r1.aig.net:gateway:10080'
		And match response contains 'policyarrangementifo:3bffe237478dfda54734a0279b4f6441'
		And match response contains 'policyarrangementifo:721aa31199bba78fe4d0dc6742a4473a'
		And match response contains 'policycontractvalues:064485f1516a574b130828e7c02fc132'
		And match response contains 'policycontractvalues:708063916c4c8ad148f5b19a58884ae9'
		And match response contains 'policyfundinfo:8ef1516901723d8f23b8e1c10aa202ea'
		And match response contains 'policyfundinfo:0e79783d067621b2719930316d6db835'
		And match response contains 'policyinquiryservice:9d1a262cf9be5d83751b2fc956fe06c1'
		And match response contains 'policyinquiryservice:12f049012e33c864c1a85f58b054487f'
		And match response contains 'policyrider:a8ea70427bbfecef25f377d183a11d8b'
		And match response contains 'policyrider:4dab3bba7c1a55415565c208502d441a'
		And match response contains 'policyroles:e654d7327235bd7311166e1757f9ed7e'
		And match response contains 'policyroles:11ff3d886ee2cd6be5d096f7f96f752f'
		And match response contains 'pwgsascs0923002.r1-core.r1.aig.net:zipkin:10411'
		