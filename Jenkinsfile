#!groovy

import groovy.json.JsonSlurperClassic
import groovy.json.JsonSlurper

node {

    def SF_CONSUMER_KEY=env.CONNECTED_APP_CONSUMER_KEY_DH
    def SF_CONSUMER_TARGET_KEY=env.CONNECTED_APP_TARGET_CONSUMER_KEY_DH
    def SF_USERNAME=env.HUB_ORG_DH
    def SF_USERNAME_TARGET=env.HUB_TARGET_ORG_DH
    def SERVER_KEY_CREDENTALS_ID=env.JWT_CRED_ID_DH
    def TEST_LEVEL='RunLocalTests'
    def PACKAGE_NAME='sfdxPrject'
    def PACKAGE_VERSION = '04t0K0000010rSAQAY'
    def SF_INSTANCE_URL = env.SFDC_HOST_DH ?: "https://login.salesforce.com"
    def SFDC_USERNAME
    def toolbelt = tool 'toolbelt'
    def currentResponse = 'SUCCESS'
    

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
                    rc = command "${toolbelt} force:auth:jwt:grant --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile \"${server_key_file}\" --setdefaultdevhubusername --instanceurl ${SF_INSTANCE_URL}   --setalias HubOrg"
                    println rc
                    if (rc != 0) {
                        currentResponse = 'FAILURE'
                        println 'code in Authorize DevHub error block'
                        error 'Salesforce dev hub org authorization failed.'
                    }
                }
                if(JOB_NAME == 'Validation_Demo/Jenkins'){
                    // -------------------------------------------------------------------------
                    // Run unit tests in test scratch org.
                    // -------------------------------------------------------------------------
                    stage('Tests DevHub') {
                        rc = command "${toolbelt} force:apex:test:run --targetusername HubOrg --wait 10 --resultformat tap --codecoverage --testlevel ${TEST_LEVEL}"
                        println rc
                        if (rc != 0) {
                            currentResponse = 'FAILURE'
                            error 'Salesforce unit test run in test scratch org failed.'
                        }
                    }
                    
                    
                }
                if(JOB_NAME == 'Demo/Jenkins'){
                    // -------------------------------------------------------------------------
                    // Create package version.
                    // -------------------------------------------------------------------------
                    stage('Create Package Version') {
                        
                        if (PACKAGE_NAME == 'true') { 
                        createPackage = command "${toolbelt}  force:package:create --name ${PACKAGE_NAME} --description My_Package --packagetype Unlocked --path force-app --nonamespace --targetdevhubusername HubOrg"
                        println createPackage
                        } else {                         
                                                        
                            if (isUnix()) {
                                output = sh returnStdout: true, script: "${toolbelt} force:package:version:create --package ${PACKAGE_NAME} --installationkeybypass --wait 10 --targetdevhubusername HubOrg  --json"
                            } else {
                                output = bat(returnStdout: true, script: "${toolbelt} force:package:version:create --package ${PACKAGE_NAME} --installationkeybypass --wait 10 --targetdevhubusername HubOrg  --json").trim()
                                output = output.readLines().drop(1).join(" ")
                            }
                        }
                        println output
                        // Wait 5 minutes for package replication.
                        def jsonSlurper = new JsonSlurper()
                        def response = jsonSlurper.parseText(output)
                        PACKAGE_VERSION = response.result.SubscriberPackageVersionId
                        println PACKAGE_VERSION
                        response = null
                    }
                    

                    // -------------------------------------------------------------------------
                    // Authorize target org to install package to.
                    // -------------------------------------------------------------------------
                    stage('Authorize Target') {
                        println 'Code in Authorized Target Org'
                        //rc = command "${toolbelt} force:auth:jwt:grant --instanceurl ${SF_INSTANCE_URL} --clientid ${SF_CONSUMER_KEY} --username ${SF_USERNAME} --jwtkeyfile ${server_key_file} --setdefaultdevhubusername --setalias HubOrg"
                        rc = command "${toolbelt} force:auth:jwt:grant --clientid ${CONNECTED_APP_TARGET_CONSUMER_KEY_DH} --username ${SF_USERNAME_TARGET} --jwtkeyfile \"${server_key_file}\" --setdefaultdevhubusername --instanceurl ${SF_INSTANCE_URL}  --setalias HubTargetOrg"
                        println rc
                        if (rc != 0) {
                            currentResponse = 'FAILURE'
                            println 'code in Authorize target org error block'
                            error 'Salesforce target org authorization failed.'
                        }
                    }

                    
                    // -------------------------------------------------------------------------
                    // Run unit tests in package install scratch org.
                    // -------------------------------------------------------------------------

                    stage('Tests Target') {
                        rc = command "${toolbelt} force:apex:test:run --targetusername HubTargetOrg --resultformat tap --codecoverage --testlevel ${TEST_LEVEL} --wait 10"
                        
                        if (rc != 0) {
                            currentResponse = 'FAILURE'
                            error 'Salesforce unit test run in pacakge install scratch org failed.'
                        }
                    }

                    // -------------------------------------------------------------------------
                    // Install package in target org.
                    // -------------------------------------------------------------------------

                    stage('Deployment') {
                        rc = command "${toolbelt} force:package:install --package ${PACKAGE_VERSION} --targetusername HubTargetOrg --wait 10"
                        if (rc != 0) {
                            currentResponse = 'FAILURE'
                            error 'Salesforce package install failed.'
                        }
                    }

                    //emailext body: "This is email", recipientProviders: [[$class: 'DevelopersRecipientProvider'],[$class: 'RequesterRecipientProvider']], subject: 'Test'
                    //emailext body: "This is to inform you that Job '${JOB_NAME}' (${BUILD_NUMBER}) having ${currentBuild.currentResult} status and your Subscriber Package Version Id is ${PACKAGE_VERSION}" , recipientProviders: [[$class: 'DevelopersRecipientProvider'],[$class: 'RequesterRecipientProvider']], subject: "Job '${JOB_NAME}' (${BUILD_NUMBER}) ${currentBuild.currentResult} - confirmation"
                }
            
            }
            finally {  
                println 'Finally start'
                //emailext body: "This is email", recipientProviders: [[$class: 'DevelopersRecipientProvider'],[$class: 'RequesterRecipientProvider']], subject: 'Test'
                //emailext body: "This is to inform you that Job '${JOB_NAME}' (${BUILD_NUMBER}) having ${currentBuild.currentResult} status and your Subscriber Package Version Id is ${PACKAGE_VERSION}" , recipientProviders: [[$class: 'DevelopersRecipientProvider'],[$class: 'RequesterRecipientProvider']], subject: "Job '${JOB_NAME}' (${BUILD_NUMBER}) ${currentBuild.currentResult} - confirmation"
                emailext body: "${currentResponse}: Job ${env.JOB_NAME} build ${env.BUILD_NUMBER}\n More info at: ${env.BUILD_URL}",
                recipientProviders: [[$class: 'DevelopersRecipientProvider'], [$class: 'RequesterRecipientProvider']],
                subject: "Jenkins Build ${currentResponse}: Job ${env.JOB_NAME}"
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
