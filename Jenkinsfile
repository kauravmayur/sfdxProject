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

    def json = '''
            {
                "status": 0,
                "result": {
                    "Id": "08c0K000000XZFvQAO",
                    "Status": "Success",
                    "Package2Id": "0Ho0K000000XZDpSAO",
                    "Package2VersionId": "05i0K000000fxWhQAI",
                    "SubscriberPackageVersionId": "04t0K000001KiJGQA0",
                    "Tag": null,
                    "Branch": null,
                    "Error": [],
                    "CreatedDate": "2020-08-10 23:21"
                }
                }'''
    def person = new JsonSlurper().parseText(json) as Person
    println person.status
    println person.result.Status

    // -------------------------------------------------------------------------
    // Check out code from source control.
    // -------------------------------------------------------------------------

    

    println SF_CONSUMER_KEY
    println SF_USERNAME
    println SERVER_KEY_CREDENTALS_ID
    println SF_INSTANCE_URL
    // -------------------------------------------------------------------------
    // Run all the enclosed stages with access to the Salesforce
    // JWT key credentials.
    // -------------------------------------------------------------------------
    println 'before withEnv'


def command(script) {
    if (isUnix()) {
        return sh(returnStatus: true, script: script);
    } else {
        return bat(returnStatus: true, script: script);
    }
}