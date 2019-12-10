function fn() {
	var env = karate.env; // get system property 'karate.env'
	
	//env = 'dev'; //added manual value to check the environment testing

	karate.log('karate.env system property was:', env);
	
	if (!env) {
		env = 'dev';
	}

	var config = {
		
		env: env,
		baseURL: 'provide environment specific URLs below',

		integrationSvcURL: 'provide environment specific URLs below',
		createRequestItemURL: 'provide environment specific URLs below',
		payServiceURL: 'provide environment specific URLs below',
		TIWrapperURL: 'provide environment specific URLs below'

	};
	
	if(env == 'dev') {
		
		config.baseURL = 'https://dwsawsinfonet01.r1-core.r1.aig.net';
		
		config.integrationSvcURL = 'https://dwsawsinfonet01.r1-core.r1.aig.net/WebServices/TCH/TCH.IntegrationService/IntegrationSvc.svc';
		config.createRequestItemURL = 'http://dwsawsinfonet02.r1-core.r1.aig.net/RequestItemCreationService/CreateRequestItem.svc';
		config.payServiceURL = 'https://dwsawsinfonet01.r1-core.r1.aig.net/WebServices/Claims/Pay.Services/PayService.svc';
		config.TIWrapperURL = 'https://hubservices.dev.trs.investments.aig.net/APS.TIWrapper/TIWrapperService.svc'
					
	} else if(env == 'qa') {
		
		config.baseURL = 'https://twsawsinfonet01.r1-core.r1.aig.net';
		
		config.integrationSvcURL = 'https://twsawsinfonet01.r1-core.r1.aig.net/WebServices/TCH/TCH.IntegrationService/IntegrationSvc.svc';
		config.createRequestItemURL = 'https://twsawsinfonet02.r1-core.r1.aig.net/RequestItemCreationService/CreateRequestItem.svc';
		config.payServiceURL = 'https://twsawsinfonet01.r1-core.r1.aig.net/WebServices/Claims/Pay.Services/PayService.svc';
				
	} else if(env == 'prod') {

		config.baseURL = 'https://pwsawsinfonet01.r1-core.r1.aig.net';
		
		config.integrationSvcURL = 'https://pwsawsinfonet01.r1-core.r1.aig.net/WebServices/TCH/TCH.IntegrationService/IntegrationSvc.svc';
		config.createRequestItemURL = 'https://pwsawsinfonet02.r1-core.r1.aig.net/RequestItemCreationService/CreateRequestItem.svc';
		config.payServiceURL = 'https://pwsawsinfonet01.r1-core.r1.aig.net/WebServices/Claims/Pay.Services/PayService.svc';

	}

	karate.configure('connectTimeout', 20000);
	karate.configure('readTimeout', 20000);
	
	return config;
}
