
/**
*********************************************************************************
* Copyright Since 2017 CommandBox by Ortus Solutions, Corp
* www.ortussolutions.com
********************************************************************************
* @author Gavin Pickin
* 
* I represent the behavior of reading and writing CF engine config in the format compatible with an Adobe 9.x server
* I extend the BaseConfig class, which represents the data itself.
*/
component accessors=true extends='cfconfig-services.models.BaseAdobe' {
	
	/**
	* Constructor
	*/
	function init() {		
		super.init();
		
		setRuntimeConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-runtime.xml' ) );		
		setClientStoreConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-clientstore.xml' ) );		
		setWatchConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-watch.xml' ) );		
		setMailConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-mail.xml' ) );		
		setDatasourceConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-datasource.xml' ) );
		setSecurityConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-security.xml' ) );
		setDebugConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-debug.xml' ) );
		setSchedulerConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-cron.xml' ) );
		setEventGatewayConfigTemplate( expandPath( '/cfconfig-services/resources/adobe9/neo-event.xml' ) );
		setWebsocketConfigPath( '' );
		setWebsocketConfigTemplate( '' );
		setSeedPropertiesPath( 'lib/password.properties' );
		setLicensePropertiesTemplate( expandPath( '/cfconfig-services/resources/adobe9/license.properties' ) );
		setVersion( '9' );
		
		return this;
	}
		
}