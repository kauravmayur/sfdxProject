// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class UserAccountTeamMember {
    global Id Id;
    global User Owner;
    global Id OwnerId;
    global User User;
    global Id UserId;
    global String AccountAccessLevel;
    global String OpportunityAccessLevel;
    global String CaseAccessLevel;
    global String ContactAccessLevel;
    global String TeamMemberRole;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;

    global UserAccountTeamMember () 
    {
    }
}