// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LiveChatTranscriptEvent {
    global Id Id;
    global Boolean IsDeleted;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global LiveChatTranscript LiveChatTranscript;
    global Id LiveChatTranscriptId;
    global String Type;
    global User Agent;
    global Id AgentId;
    global Datetime Time;
    global String Detail;
    global List<FlowRecordRelation> RelatedRecord;

    global LiveChatTranscriptEvent () 
    {
    }
}