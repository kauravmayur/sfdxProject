// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class ActiveScratchOrg {
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
    global String ScratchOrg;
    global ScratchOrgInfo ScratchOrgInfo;
    global Id ScratchOrgInfoId;
    global String Description;
    global String Features;
    global String Edition;
    global Integer SignupTrialDays;
    global Date ExpirationDate;
    global String SignupInstance;
    global String Namespace;
    global String SignupUsername;
    global String SignupEmail;
    global String OrgName;
    global Date LastLoginDate;
    global Boolean HasSampleData;
    global List<ActiveScratchOrgFeed> Feeds;
    global List<ActiveScratchOrgHistory> Histories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<NetworkActivityAudit> ParentEntities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<ContentVersion> FirstPublishLocation;
    global List<FeedComment> Parent;

    global ActiveScratchOrg () 
    {
    }
}