// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Statement__ChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global SObject Owner;
    global Id OwnerId;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Decimal Additional_Fees__c;
    global Decimal Total_Amount__c;
    global Date Statement_Date__c;
    global Date Due_Date__c;
    global String Status__c;
    global Decimal Amount_Paid__c;
    global Decimal Balance__c;

    global Statement__ChangeEvent () 
    {
    }
}