// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class QueueRoutingConfig {
    global Id Id;
    global Boolean IsDeleted;
    global String DeveloperName;
    global String Language;
    global String MasterLabel;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Integer RoutingPriority;
    global String RoutingModel;
    global Double CapacityWeight;
    global Double CapacityPercentage;
    global Integer PushTimeout;
    global SObject OverflowAssignee;
    global Id OverflowAssigneeId;
    global Boolean IsAttributeBased;
    global Integer DropAdditionalSkillsTimeout;
    global List<Group> QueueRoutingConfig;
    global List<LiveChatButton> RoutingConfiguration;

    global QueueRoutingConfig () 
    {
    }
}