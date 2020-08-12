#!groovy

import groovy.json.JsonSlurperClassic
import groovy.json.JsonSlurper

node {

    def SF_CONSUMER_KEY=env.CONNECTED_APP_CONSUMER_KEY_DH
    def SF_USERNAME=env.HUB_ORG_DH
    def SERVER_KEY_CREDENTALS_ID=env.JWT_CRED_ID_DH
    def TEST_LEVEL='RunLocalTests'
    def PACKAGE_NAME='jenkinsSfdxDemo'
    def PACKAGE_VERSION
    def SF_INSTANCE_URL = env.SFDC_HOST_DH ?: "https://login.salesforce.com"
    def SFDC_USERNAME
    def toolbelt = tool 'toolbelt'


    def json ='''{
                        "status": 0,
                        "result": {
                            "orgId": "00D28000001HHdGEAW",
                            "accessToken": "735ca861b9e73e18d53b8fb581e4f1c24443a3c6f5ec93c3fdd24ff8adaa809bbfb4d5b4f4032471ca682d2519b78556fbeaf3027551cf31f541d704aedec6e66b7fc09012d849904f9364f03912247b95e96fe78fa3ccced8d8c01eb32ec0f314adf7b43818fb776c67cbf1e5f3d26ddbee1b482d08:3470192bd82a950219c8b8d31f204c0c",
                            "instanceUrl": "https://mayursinghkaurav-dev-ed.my.salesforce.com",
                            "loginUrl": "https://login.salesforce.com/",
                            "username": "kauravtest@gmail.com",
                            "clientId": "3MVG9ZL0ppGP5UrAzPtQ.ax5FfXs3IrmJ4221D8m_AjlqRsZLovGwwBsQYGZcQ4pQXgm6qAAHE4f5r0RlmkC4",
                            "privateKey": "C:\\Program Files (x86)\\Jenkins\\workspace\\SFDX_New_@tmp\\secretFiles\\73056497-8d59-4db5-b6e4-4417856719b5\\server.key"
                        }
                    }'''
    def jsonSlurper = new JsonSlurper()
    def resultStr = jsonSlurper.parseText(json)
    println resultStr.result.orgId
    //PACKAGE_VERSION = result.result.orgId

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
                println 'Authorize DevHub Started'
                rc = command "${toolbelt} force:auth:jwt:grant --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile \"${server_key_file}\" --setdefaultdevhubusername --instanceurl ${SF_INSTANCE_URL} --json --setalias HubOrg"
                println rc
                

                /*
                def jsonSlurper = new JsonSlurper()
                
                def response = jsonSlurper.parseText(rc)
                def orgId = response.result.orgIdn
                */
                println orgId
                if (rc != 0) {
                    println 'code in Authorize DevHub error block'
                    error 'Salesforce dev hub org authorization failed.'
                }
                println 'Authorize DevHub Ended'
            }

            


            // -------------------------------------------------------------------------
            // Run unit tests in test scratch org.
            // -------------------------------------------------------------------------
            /*
            stage('Run Tests In Test Scratch Org') {
                rc = command "${toolbelt} force:apex:test:run --targetusername HubOrg --wait 10 --resultformat tap --codecoverage --json --testlevel ${TEST_LEVEL}"
                
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

            /*
            stage('Install Package In Scratch Org') {
                rc = command "${toolbelt} force:package:install --package ${PACKAGE_VERSION} --targetusername myScratchOrg --wait 10"
                if (rc != 0) {
                    error 'Salesforce package install failed.'
                }
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