function fn() {
	var env = karate.env; // get system property 'karate.env'
	
	karate.log('karate.env system property was:', env);
	
	if (!env) {
		env = 'dev';
	}

	var config = {
		env: env,
		
		baseURL: 'http://dwsawsinfonet01.r1-core.r1.aig.net',
		baseURL1: 'http://dwsaasbiztalk01.r1-core.r1.aig.net',
			
		qaURL1: 'https://twsawsinfonet01.r1-core.r1.aig.net',
		qaURL2: 'https://twsawsinfonet03.r1-core.r1.aig.net',
		prodURL1: 'https://pwsawsinfonet01.r1-core.r1.aig.net',
		prodURL2: 'https://pwsawsinfonet03.r1-core.r1.aig.net',
		prodURL3: 'https://pwsawsinfonet04.r1-core.r1.aig.net'
		
	};
	
	if(env == 'dev') {
		config.baseURL = 'http://dwsawsinfonet01.r1-core.r1.aig.net'
		config.baseURL1 = 'http://dwsaasbiztalk01.r1-core.r1.aig.net'

	}
	else if(env == 'qa') {
		config.baseURL = 'https://twsawsinfonet01.r1-core.r1.aig.net'
		config.baseURL1 = 'http://twsaasbiztalk01.r1-core.r1.aig.net'

	}
	else if(env == 'prod') {
		config.baseURL = 'https://pwsawsinfonet03.r1-core.r1.aig.net'
		config.baseURL1 = 'http://pwsaasbiztalk01.r1-core.r1.aig.net'

	}
	
	karate.configure('connectTimeout', 20000);
	karate.configure('readTimeout', 20000);
	
	return config;
}