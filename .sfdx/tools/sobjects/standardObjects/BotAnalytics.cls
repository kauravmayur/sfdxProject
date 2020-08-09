// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class BotAnalytics {
    global Id Id;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime SystemModstamp;
    global LiveChatTranscript LiveChatTranscript;
    global Id LiveChatTranscriptId;
    global String ChatSessionId;
    global String BotName;
    global Integer BotVersionNumber;
    global Datetime AccessTimestamp;
    global Boolean IsRequestedEscalation;
    global Boolean IsSuccessfulEscalation;
    global Boolean IsUnsuccessfulEscalation;
    global Datetime SessionStartTime;
    global String SessionEndType;
    global Datetime FirstBotInteractionTime;
    global Datetime LastBotInteractionTime;
    global Integer BotDuration;
    global Boolean WasSessionDropped;
    global String DroppedDialogId;
    global String DroppedDialogName;
    global String DroppedElementId;
    global Integer StartedDialogsCount;
    global Integer AbandonedDialogsCount;
    global Integer NlpMessageCount;
    global Integer NlpMatchCount;
    global Integer BotMessageCount;
    global Integer ToBotMessageCount;
    global Integer MenuClicksCount;
    global Integer ButtonClicksCount;
    global Integer OptionsMenuSelectionsCount;
    global String EscalationType;

    global BotAnalytics () 
    {
    }
}