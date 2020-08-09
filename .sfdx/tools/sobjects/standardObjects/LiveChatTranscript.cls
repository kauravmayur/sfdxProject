// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LiveChatTranscript {
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
    global LiveChatVisitor LiveChatVisitor;
    global Id LiveChatVisitorId;
    global String Body;
    global Contact Contact;
    global Id ContactId;
    global Lead Lead;
    global Id LeadId;
    global Case Case;
    global Id CaseId;
    global Account Account;
    global Id AccountId;
    global LiveChatDeployment LiveChatDeployment;
    global Id LiveChatDeploymentId;
    global LiveChatButton LiveChatButton;
    global Id LiveChatButtonId;
    global Skill Skill;
    global Id SkillId;
    global String IpAddress;
    global String Location;
    global String UserAgent;
    global String Browser;
    global String Platform;
    global String BrowserLanguage;
    global String ScreenResolution;
    global String ReferrerUri;
    global String Status;
    global Datetime RequestTime;
    global Datetime StartTime;
    global Datetime EndTime;
    global String EndedBy;
    global Integer AverageResponseTimeVisitor;
    global Integer AverageResponseTimeOperator;
    global Integer OperatorMessageCount;
    global Integer VisitorMessageCount;
    global Integer MaxResponseTimeOperator;
    global String ChatKey;
    global String SupervisorTranscriptBody;
    global Integer MaxResponseTimeVisitor;
    global Integer ChatDuration;
    global Integer WaitTime;
    global Integer Abandoned;
    global Boolean IsChatbotSession;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<Attachment> Attachments;
    global List<Case> Cases;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<ConversationEntry> ConversationEntries;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<LinkedArticle> LinkedArticles;
    global List<LiveChatTranscriptEvent> LiveChatTranscriptEvents;
    global List<LiveChatTranscriptFeed> Feeds;
    global List<LiveChatTranscriptHistory> Histories;
    global List<LiveChatTranscriptSkill> LiveChatTranscriptSkills;
    global List<NetworkActivityAudit> ParentEntities;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<Task> Tasks;
    global List<AgentWork> WorkItem;
    global List<AnalyticsBotSession> Source;
    global List<BotAnalytics> LiveChatTranscript;
    global List<CaseChangeEvent> Source;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<PendingServiceRouting> WorkItem;
    global List<TaskChangeEvent> What;

    global LiveChatTranscript () 
    {
    }
}