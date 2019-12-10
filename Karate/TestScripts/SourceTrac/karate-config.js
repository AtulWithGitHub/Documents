function fn() {
	var env = karate.env; // get system property 'karate.env'
	karate.log('karate.env system property was:', env);
	
	if (!env) {
		env = 'dev';
	}

	var config = {
		env: env,
		baseURL: 'https://dwsawstrachome.r1-core.r1.aig.net',
		notificationGatewayURL: 'https://dwsawstrachome.r1-core.r1.aig.net/NotificationGateway',
		workitemServiceURL: 'https://dwsawstrachome.r1-core.r1.aig.net/WorkItemServiceDev',
		awdService: 'https://dwsawstrachome.r1-core.r1.aig.net/AWDServiceDev',
		awdFileCopy: 'https://dwsawstrachome.r1-core.r1.aig.net/AWDFileCopyDEV'
		
	};
	
	if(env == 'dev'){
		config.baseURL = 'https://dwsawstrachome.r1-core.r1.aig.net';
		
		config.notificationGatewayURL = 'https://dwsawstrachome.r1-core.r1.aig.net/NotificationGateway';
		config.workitemServiceURL: = 'https://dwsawstrachome.r1-core.r1.aig.net/WorkItemServiceDev';
		config.awdService = 'https://dwsawstrachome.r1-core.r1.aig.net/AWDServiceDev';
		config.awdFileCopy = 'https://dwsawstrachome.r1-core.r1.aig.net/AWDFileCopyDEV';
		karate.log('Selected base URL = ', config.baseURL);			
	}
	else if(env == 'qa'){
		config.baseURL = 'https://dwsawstrachome.r1-core.r1.aig.net';
		
		config.notificationGatewayURL = 'https://dwsawstrachome.r1-core.r1.aig.net/NotificationGatewayTest';
		config.workitemServiceURL: = 'https://dwsawstrachome.r1-core.r1.aig.net/WorkItemServiceTest';
		config.awdService = 'https://dwsawstrachome.r1-core.r1.aig.net/AWDServicePensionsDev';
		config.awdFileCopy = 'https://dwsawstrachome.r1-core.r1.aig.net/AWDFileCopyTEST';
		karate.log('Selected base URL = ', config.baseURL);
	}
	else if(env == 'uat'){
		config.baseURL = 'https://dwsawstrachome.r1-core.r1.aig.net';
		
		config.attachmentURL = 'https://stpstg.sunamerica.com/SAAttachmentReceiverService/AttachmentServiceService';
		karate.log('Selected base URL = ', config.baseURL);
	}
	else if(env == 'prod'){

		config.baseURL = 'https://dwsawstrachome.r1-core.r1.aig.net';
		
		config.attachmentURL = 'https://stpprod.sunamerica.com/SAAttachmentReceiverService/AttachmentServiceService';
		karate.log('Selected base URL = ', config.baseURL);
	}

	karate.configure('connectTimeout', 20000);
	karate.configure('readTimeout', 20000);
	
	return config;
}
