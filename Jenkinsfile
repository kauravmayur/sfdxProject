#!groovy

import groovy.json.JsonSlurperClassic
import groovy.json.JsonBuilder  
import groovy.json.JsonSlurper  
import groovy.transform.ToString

node {

    def SF_CONSUMER_KEY=env.CONNECTED_APP_CONSUMER_KEY_DH
    def SF_USERNAME=env.HUB_ORG_DH
    def SERVER_KEY_CREDENTALS_ID=env.JWT_CRED_ID_DH
    def TEST_LEVEL='RunLocalTests'
    def PACKAGE_NAME='jenkinsSfdxDemo'
    def PACKAGE_VERSION = '04t0K000001KiJaQAK'
    def SF_INSTANCE_URL = env.SFDC_HOST_DH ?: "https://login.salesforce.com"
    def SFDC_USERNAME
    def toolbelt = tool 'toolbelt'

    

    // -------------------------------------------------------------------------
    // Check out code from source control.
    // -------------------------------------------------------------------------

    stage('checkout source') {
        checkout scm
    }

    println SF_CONSUMER_KEY
    println SF_USERNAME
    println SERVER_KEY_CREDENTALS_ID
    println SF_INSTANCE_URL
    // -------------------------------------------------------------------------
    // Run all the enclosed stages with access to the Salesforce
    // JWT key credentials.
    // -------------------------------------------------------------------------
    println 'before withEnv'
	
    withEnv(["HOME=${env.WORKSPACE}"]) {
        println 'after withEnv'
        println 'This is current Org'
        withCredentials([file(credentialsId: SERVER_KEY_CREDENTALS_ID, variable: 'server_key_file')]) {
			
            // -------------------------------------------------------------------------
            // Authorize the Dev Hub org with JWT key and give it an alias.
            // -------------------------------------------------------------------------

            stage('Authorize DevHub') {
                println 'code in Authorize DevHub'
				
				println 'before withEnv'

				
				        
				//rc = command "${toolbelt} force:auth:jwt:grant --instanceurl ${SF_INSTANCE_URL} --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile ${server_key_file} --setdefaultdevhubusername --setalias HubOrg"
                //rc = command "${toolbelt} force:auth:jwt:grant --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile \"${server_key_file}\" --setdefaultdevhubusername --instanceurl ${SF_INSTANCE_URL} --setalias HubOrg"
                rc = sh returnStdout: true, script: "${toolbelt} force:auth:jwt:grant --instanceurl ${SF_INSTANCE_URL} --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile ${server_key_file} --setdefaultdevhubusername --setalias HubOrg"
                println rc
                
                def person = rc
                // Json String
                def personJSON = new JsonBuilder(person)
                println personJSON
                // Json String to Map
                def personMap = new JsonSlurper().parseText(personJSON)
                
                println(personMap)

                //PACKAGE_VERSION = rc.result.orgId
                //println PACKAGE_VERSION
                if (rc != 0) {
                    println 'code in Authorize DevHub error block'
                    error 'Salesforce dev hub org authorization failed.'
                }
            }

            


            // -------------------------------------------------------------------------
            // Run unit tests in test scratch org.
            // -------------------------------------------------------------------------
            /*
            stage('Run Tests In Test Scratch Org') {
                rc = command "${toolbelt} force:apex:test:run --targetusername myScratchOrg --wait 10 --resultformat tap --codecoverage --testlevel ${TEST_LEVEL}"
                if (rc != 0) {
                    error 'Salesforce unit test run in test scratch org failed.'
                }
            }
            */


            // -------------------------------------------------------------------------
            // Create package version.
            // -------------------------------------------------------------------------
            /*
            stage('Create Package Version') {
                
                output = command "${toolbelt} force:package:version:create --package ${PACKAGE_NAME} --installationkeybypass --wait 10 --targetdevhubusername HubOrg  --json "
                println output
                // Wait 5 minutes for package replication.
                sleep 30

                
                //def jsonSlurper = new JsonSlurperClassic()
                def jsonSlurper = new JsonSlurper()
                def response = jsonSlurper.parseText(output)

                PACKAGE_VERSION = response.result.SubscriberPackageVersionId
                println PACKAGE_VERSION
                response = null

                echo ${PACKAGE_VERSION}
                
            }
            */

        }
    }
}

def command(script) {
    if (isUnix()) {
        return sh(returnStatus: true, script: script);
    } else {
        return bat(returnStatus: true, script: script);
    }
}