// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Payment__ChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global String Name;
    global RecordType RecordType;
    global Id RecordTypeId;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Decimal Amount__c;
    global Statement__c Statement__c;
    global String Status__c;
    global Datetime Payment_Date__c;
    global String Authorize_net_Transaction_Id__c;
    global String Authorize_net_Authorization_code__c;
    global String Authorize_net_Response__c;
    global String Billing_Name__c;
    global String Billing_Street__c;
    global String Billing_City__c;
    global String Billing_State__c;
    global String Billing_Postal_Code__c;
    global String Check_Account_Number__c;
    global String Check_Routing_Number__c;
    global String Credit_Card_Number__c;
    global String Expiration_Year__c;
    global String Credit_Card_Security_Card__c;

    global Payment__ChangeEvent () 
    {
    }
}