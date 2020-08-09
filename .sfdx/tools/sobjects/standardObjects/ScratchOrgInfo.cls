// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ScratchOrgInfo {
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
    global String Edition;
    global String Username;
    global String AdminEmail;
    global String OrgName;
    global Integer DurationDays;
    global String ConnectedAppConsumerKey;
    global String ConnectedAppCallbackUrl;
    global String Namespace;
    global String Features;
    global String Country;
    global String Language;
    global String Instance;
    global String Package2AncestorIds;
    global Boolean HasSampleData;
    global String Release;
    global String SignupUsername;
    global String Status;
    global String ErrorCode;
    global String ScratchOrg;
    global String SignupInstance;
    global String AuthCode;
    global String SignupCountry;
    global String SignupLanguage;
    global String SignupEmail;
    global Integer SignupTrialDays;
    global String LoginUrl;
    global String Description;
    global Date ExpirationDate;
    global Date LastLoginDate;
    global String DeletedBy;
    global Date DeletedDate;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<NetworkActivityAudit> ParentEntities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<ScratchOrgInfoFeed> Feeds;
    global List<ScratchOrgInfoHistory> Histories;
    global List<ActiveScratchOrg> ScratchOrgInfo;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;

    global ScratchOrgInfo () 
    {
    }
}