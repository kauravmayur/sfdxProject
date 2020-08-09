// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LiveChatTranscriptChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global User Owner;
    global Id OwnerId;
    global String Name;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
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
    global Boolean IsChatbotSession;

    global LiveChatTranscriptChangeEvent () 
    {
    }
}