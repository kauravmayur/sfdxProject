// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LiveChatButton {
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
    global Skill Skill;
    global Id SkillId;
    global Site Site;
    global Id SiteId;
    global StaticResource OnlineImage;
    global Id OnlineImageId;
    global StaticResource OfflineImage;
    global Id OfflineImageId;
    global ApexPage ChatPage;
    global Id ChatPageId;
    global ApexPage PrechatFormPage;
    global Id PrechatFormPageId;
    global String PrechatFormUrl;
    global ApexPage PostchatPage;
    global Id PostchatPageId;
    global String PostchatUrl;
    global String RoutingType;
    global Integer PushTimeout;
    global Boolean HasQueue;
    global Integer PerAgentQueueLength;
    global Integer OverallQueueLength;
    global String WindowLanguage;
    global String Type;
    global Boolean IsActive;
    global Boolean OptionsIsInviteAutoRemove;
    global Boolean OptionsHasInviteAfterAccept;
    global Boolean OptionsHasInviteAfterReject;
    global Boolean OptionsHasRerouteDeclinedRequest;
    global Boolean OptionsIsAutoAccept;
    global Boolean OptionsHasChasitorIdleTimeout;
    global Integer TimeToRemoveInvite;
    global String Animation;
    global String InviteStartPosition;
    global String InviteEndPosition;
    global StaticResource InviteImage;
    global Id InviteImageId;
    global String AutoGreeting;
    global String CustomAgentName;
    global Integer NumberOfReroutingAttempts;
    global Integer ChasitorIdleTimeout;
    global Integer ChasitorIdleTimeoutWarning;
    global Group Queue;
    global Id QueueId;
    global QueueRoutingConfig RoutingConfiguration;
    global Id RoutingConfigurationId;
    global List<LiveChatTranscript> LiveChatTranscripts;
    global List<LiveChatButtonDeployment> Button;
    global List<LiveChatTranscriptChangeEvent> LiveChatButton;
    global List<LiveChatUserConfig> SupervisorDefaultButton;
    global List<UserConfigTransferButton> LiveChatButton;

    global LiveChatButton () 
    {
    }
}