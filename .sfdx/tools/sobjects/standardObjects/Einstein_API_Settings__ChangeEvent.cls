// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Einstein_API_Settings__ChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global String Name;
    global SObject SetupOwner;
    global Id SetupOwnerId;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global String Registerd_Email__c;
    global String Sentiment_Endpoint__c;
    global String Sentiment_Model_id__c;
    global String Token_Endpoint__c;
    global Double Token_Expiration_Seconds__c;
    global String Intent_Upload_Dataset_Endpoint__c;
    global String Intent_Train_Dataset_Endpoint__c;
    global String Predict_Intent_Endpoint__c;
    global String Intent_Dataset_Details_Endpoint__c;
    global String Intent_Dataset_Training_Status_Endpoint__c;
    global String Intent_Dataset_CSV__c;

    global Einstein_API_Settings__ChangeEvent () 
    {
    }
}