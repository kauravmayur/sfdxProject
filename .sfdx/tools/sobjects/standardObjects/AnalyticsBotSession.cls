// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class AnalyticsBotSession {
    global Id Id;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime LastModifiedDate;
    global Datetime SystemModstamp;
    global LiveChatTranscript Source;
    global Id SourceId;
    global String ChannelType;
    global String ConversationSessionKey;
    global String BotName;
    global Integer BotVersionNumber;
    global Boolean WasTransferSuccessful;
    global String TransferType;
    global Datetime ConversationSessionStartTime;
    global String SessionEndType;
    global Datetime SessionStartTime;
    global Datetime SessionEndTime;
    global Integer SessionDuration;
    global Boolean WasSessionDropped;
    global String LastDialogName;
    global Integer StartedDialogCount;
    global Integer AbandonedDialogCount;
    global Integer NlpIntentRequestCount;
    global Integer NlpIntentRequestHitCount;
    global Integer FromBotMessageCount;
    global Integer ToBotMessageCount;
    global Integer ChoiceSelectionCount;
    global Integer GlobalChoiceSelectionCount;

    global AnalyticsBotSession () 
    {
    }
}