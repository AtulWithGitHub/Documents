function fn() {
	var env = karate.env; // get system property 'karate.env'
	
	//env = 'uat'; //added manual value to check the environment testing

	karate.log('karate.env system property was:', env);
	
	if (!env) {
		env = 'dev';
	}

	var config = {
		env: env,
		baseURL: 'https://devfo.sunamerica.com/',

		attachmentURL: 'https://stpstg.sunamerica.com/SAAttachmentReceiverService/AttachmentServiceService',
		
	};
	
	if(env == 'dev'){
		config.baseURL = 'https://devfo.sunamerica.com/';
		
		config.attachmentURL = 'https://devfo.sunamerica.com/SAAttachmentReceiverService/AttachmentServiceService';
		karate.log('Selected base URL = ', config.baseURL);			
	}
	else if(env == 'qa'){
		config.baseURL = 'https://qafo.sunamerica.com/';
		
		config.attachmentURL = 'http://10.97.12.136:8080/SAAttachmentReceiverService/AttachmentServiceService';
		karate.log('Selected base URL = ', config.baseURL);
	}
	else if(env == 'uat'){
		config.baseURL = 'https://stgfo.sunamerica.com/';
		
		config.attachmentURL = 'https://stpstg.sunamerica.com/SAAttachmentReceiverService/AttachmentServiceService';
		karate.log('Selected base URL = ', config.baseURL);
	}
	else if(env == 'prod'){

		config.baseURL = 'https://frontoffice.sunamerica.com/';
		
		config.attachmentURL = 'https://stpprod.sunamerica.com/SAAttachmentReceiverService/AttachmentServiceService';
		karate.log('Selected base URL = ', config.baseURL);
	}

	karate.configure('connectTimeout', 20000);
	karate.configure('readTimeout', 20000);
	
	return config;
}
