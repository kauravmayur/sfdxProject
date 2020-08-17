#!groovy

import groovy.json.JsonSlurperClassic
import groovy.json.JsonSlurper

node {

    def SF_CONSUMER_KEY=env.CONNECTED_APP_CONSUMER_KEY_DH
    def SF_USERNAME=env.HUB_ORG_DH
    def SERVER_KEY_CREDENTALS_ID=env.JWT_CRED_ID_DH
    def TEST_LEVEL='RunLocalTests'
    def PACKAGE_NAME='sfdxPrject'
    def PACKAGE_VERSION = '04t0K0000010rJXQAY'
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
            try {
                stage('Authorize DevHub') {
                    println 'code in Authorize DevHub'
                    //rc = command "${toolbelt} force:auth:jwt:grant --instanceurl ${SF_INSTANCE_URL} --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile ${server_key_file} --setdefaultdevhubusername --setalias HubOrg"
                    rc = command "${toolbelt} force:auth:jwt:grant --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile \"${server_key_file}\" --setdefaultdevhubusername --instanceurl ${SF_INSTANCE_URL}  --setalias HubOrg"
                    println rc
                    if (rc != 0) {
                        println 'code in Authorize DevHub error block'
                        error 'Salesforce dev hub org authorization failed.'
                    }
                    
                }
                
                // -------------------------------------------------------------------------
                // Run unit tests in test scratch org.
                // -------------------------------------------------------------------------
                
                stage('Run Tests In Test Scratch Org') {
                    
                    rc = command "${toolbelt} force:apex:test:run --targetusername HubOrg --wait 10 --resultformat tap --codecoverage --testlevel ${TEST_LEVEL}"
                    if (rc != 0) {
                        error 'Salesforce unit test run in test scratch org failed.'
                    }
                    
                }
                
                
                // -------------------------------------------------------------------------
                // Create package version.
                // -------------------------------------------------------------------------
                
                stage('Create Package Version') {
                    //createPackage = command "${toolbelt}  force:package:create --name ${PACKAGE_NAME} --description My_Package --packagetype Unlocked --path force-app --nonamespace --targetdevhubusername HubOrg"
                   // println createPackage
                    
                    //output = command "${toolbelt} force:package:version:create --package ${PACKAGE_NAME} --installationkeybypass --wait 10 --targetdevhubusername HubOrg  --json "
                    /*
                    if (isUnix()) {
                        output = sh returnStdout: true, script: "${toolbelt} force:package:version:create --package ${PACKAGE_NAME} --installationkeybypass --wait 10 --targetdevhubusername HubOrg  --json"
                    } else {
                        output = bat(returnStdout: true, script: "${toolbelt} force:package:version:create --package ${PACKAGE_NAME} --installationkeybypass --wait 10 --targetdevhubusername HubOrg  --json").trim()
                        output = output.readLines().drop(1).join(" ")
                    }
                    println output
                    // Wait 5 minutes for package replication.
                    sleep 30

                    
                    //def jsonSlurper = new JsonSlurperClassic()
                    def jsonSlurper = new JsonSlurper()
                    def response = jsonSlurper.parseText(output)

                    PACKAGE_VERSION = response.result.SubscriberPackageVersionId
                    println PACKAGE_VERSION
                    response = null
                    */
                    println PACKAGE_VERSION
                    echo ${PACKAGE_VERSION}
                    
                    
                }
                

                // -------------------------------------------------------------------------
                // Create new scratch org to install package to.
                // -------------------------------------------------------------------------
                /*
                stage('Create Package Install Scratch Org') {
                    
                    rc = command "${toolbelt} force:org:create --targetdevhubusername HubOrg --setdefaultusername --definitionfile config/project-scratch-def.json --setalias installorg --wait 10 --durationdays 1"
                    if (rc != 0) {
                        error 'Salesforce package install scratch org creation failed.'
                    }
                    
                    
                }
                */
            }
            
            finally {  
                println 'Finally start'
                //emailext body: "This is email", recipientProviders: [[$class: 'DevelopersRecipientProvider'],[$class: 'RequesterRecipientProvider']], subject: 'Test'
                emailext body: "This is to inform you that Job '${JOB_NAME}' (${BUILD_NUMBER}) having ${currentBuild.currentResult} status and your Subscriber Package Version Id is ${PACKAGE_VERSION}" , recipientProviders: [[$class: 'DevelopersRecipientProvider'],[$class: 'RequesterRecipientProvider']], subject: "Job '${JOB_NAME}' (${BUILD_NUMBER}) ${currentBuild.currentResult} - confirmation"
                  
            }
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
