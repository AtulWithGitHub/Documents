function fn() {
	var env = karate.env; // get system property 'karate.env'
	
	karate.log('karate.env system property was:', env);
	
	if (!env) {
		env = 'dev';
	}

	var config = {
		env: env,
		
		baseURL: 'Provide environment specific URLs below',
		notUpURL: 'Provide environment specific URLs below'
		
	};
	
	if(env == 'dev') {
		config.baseURL = 'http://dwsawsinfonet01.r1-core.r1.aig.net'

	}
	else if(env == 'qa') {
		config.baseURL = 'http://tlsaasnwas01:9080/DWFWebServices/rest2'
		config.notUpURL ='http://tlsaasnwas0<srno>:9080/DWFWebServices/rest2'

	}
	else if(env == 'uat') {
		config.baseURL = 'http://alsaasnwas01:9080/DWFWebServices/rest2'
		config.notUpURL = 'http://alsaasnwas0<srno>:9080/DWFWebServices/rest2'	
	}
	else if(env == 'prod') {
		config.baseURL = 'http://plsaasnwas02:9080/DWFWebServices/rest2'
		config.notUpURL = 'http://plsaasnwas0<srno>:9080/DWFWebServices/rest2'
	}
	
	karate.configure('connectTimeout', 20000);
	karate.configure('readTimeout', 20000);
	
	return config;
}