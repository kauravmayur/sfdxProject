// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class LiveChatDeployment {
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
    global String WindowTitle;
    global Boolean HasTranscriptSave;
    global Site Site;
    global Id SiteId;
    global StaticResource Branding;
    global Id BrandingId;
    global StaticResource MobileBranding;
    global Id MobileBrandingId;
    global String Domains;
    global Boolean OptionsHasPrechatApi;
    global Integer ConnectionWarningDuration;
    global Integer ConnectionTimeoutDuration;
    global List<LiveChatTranscript> LiveChatTranscripts;
    global List<LiveChatButtonDeployment> Deployment;
    global List<LiveChatTranscriptChangeEvent> LiveChatDeployment;

    global LiveChatDeployment () 
    {
    }
}