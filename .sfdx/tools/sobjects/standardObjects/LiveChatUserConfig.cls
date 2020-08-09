// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LiveChatUserConfig {
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
    global Integer Capacity;
    global Boolean HasSneakPeek;
    global Boolean HasRequestSound;
    global Boolean HasLogoutSound;
    global String AutoGreeting;
    global Boolean HasNotifications;
    global Boolean IsAutoAwayOnDecline;
    global Integer CriticalWaitTime;
    global Boolean OptionsHasChatMonitoring;
    global Boolean OptionsHasWhisperMessage;
    global Boolean OptionsHasAgentSneakPeek;
    global Boolean OptionsHasAgentFileTransfer;
    global Boolean OptionsHasChatConferencing;
    global Boolean OptionsHasVisitorBlocking;
    global Boolean OptionsIsAutoAwayOnPushTimeout;
    global Boolean OptionsHasAssistanceFlag;
    global Boolean OptionsHasChatTransferToButton;
    global Boolean OptionsHasChatTransferToAgent;
    global Boolean OptionsHasChatTransferToSkill;
    global String SupervisorDefaultAgentStatus;
    global Skill SupervisorDefaultSkill;
    global Id SupervisorDefaultSkillId;
    global LiveChatButton SupervisorDefaultButton;
    global Id SupervisorDefaultButtonId;
    global String CustomAgentName;
    global List<LiveChatUserConfigProfile> LiveChatUserConfig;

    global LiveChatUserConfig () 
    {
    }
}