// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class BotEventLog {
    global Id Id;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime SystemModstamp;
    global String ChatSessionId;
    global String UUID;
    global String BotStepId;
    global String BotDialogId;
    global String BotDialogName;
    global String BotId;
    global String BotVersionId;
    global Boolean IsInbound;
    global Datetime EventTimestamp;
    global String EventType;
    global String ExceptionMessage;
    global Boolean IsException;
    global String Message;
    global String InputParameter;
    global String OutputParameter;
    global Double TotalResponseTime;
    global Double ExternalLatencyTime;

    global BotEventLog () 
    {
    }
}