function fn() {
	var env = karate.env; // get system property 'karate.env'
	
	//env = 'dev'; //added manual value to check the environment testing

	karate.log('karate.env system property was:', env);
	
	if (!env) {
		env = 'dev';
	}

	var config = {
		env: env,
		baseURL: 'https://devfo.sunamerica.com',
		actuateURL: 'Provide Actuate environment specific URLs below',
		SWISText: 'This field is used to copare server text in SWIS respose',
	};
	
	if(env == 'dev') {
		
		config.baseURL = 'https://devfo.sunamerica.com';
		config.actuateURL = ''
		config.SWISText = 'Server devfo.sunamerica.com is running in the dev environment';
		
	} else if(env == 'qa') {
		
		config.baseURL = 'https://qafo.sunamerica.com';
		config.actuateURL =  'https://qarpts.sunamerica.com/iportal/newrequest/do_executereport.jsp?code=SunviewUser&__executableName=/SunAmerica/Enterprise/Reports/Policy/Administration/System/Sources/SunView/'
		config.SWISText = 'Server qafo.sunamerica.com is running in the QA environment';
		
	} else if(env == 'uat') {
		
		config.baseURL = 'https://stgfo.sunamerica.com';
		config.actuateURL = 'https://stgrpts.sunamerica.com/iportal/newrequest/do_executereport.jsp?code=SunviewUser&__executableName=/SunAmerica/Enterprise/Reports/Policy/Administration/System/Sources/SunView/'
		config.SWISText = 'Server stgfo.sunamerica.com is running in the UAT environment';
		
	} else if(env == 'prod') {

		config.baseURL = 'https://frontoffice.sunamerica.com';
		config.actuateURL = 'https://reports.sunamerica.com/iportal/newrequest/do_executereport.jsp?code=SunviewUser&__executableName=/SunAmerica/Enterprise/Reports/Policy/Administration/System/Sources/SunView/'
		config.SWISText = 'Server frontoffice.sunamerica.com is running in the Production environment';

	}

	karate.configure('connectTimeout', 20000);
	karate.configure('readTimeout', 20000);
	
	return config;
}