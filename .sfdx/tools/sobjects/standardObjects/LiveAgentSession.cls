// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LiveAgentSession {
    global Id Id;
    global SObject Owner;
    global Id OwnerId;
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
    global User Agent;
    global Id AgentId;
    global Datetime LoginTime;
    global Datetime LogoutTime;
    global Integer TimeInOnlineStatus;
    global Integer TimeInAwayStatus;
    global Integer TimeInChats;
    global Integer TimeIdle;
    global Integer TimeAtCapacity;
    global Integer ChatReqAssigned;
    global Integer ChatReqEngaged;
    global Integer ChatReqDeclined;
    global Integer ChatReqTimedOut;
    global Integer NumFlagRaised;
    global Integer NumFlagLoweredAgent;
    global Integer NumFlagLoweredSupervisor;
    global List<ActivityHistory> ActivityHistories;
    global List<EmailMessage> Emails;
    global List<Event> Events;
    global List<LiveAgentSessionHistory> Histories;
    global List<OpenActivity> OpenActivities;
    global List<Task> Tasks;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<TaskChangeEvent> What;

    global LiveAgentSession () 
    {
    }
}