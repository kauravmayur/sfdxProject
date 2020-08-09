// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class KnowledgeArticleVersionHistory {
    global Id Id;
    global Boolean IsDeleted;
    global KnowledgeArticle Parent;
    global Id ParentId;
    global String Language;
    global Integer VersionNumber;
    global String ParentSobjectType;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime CreatedDate;
    global String EventType;
    global String FieldName;
    global Object OldValue;
    global Object NewValue;
    global SObject Version;
    global Id VersionId;

    global KnowledgeArticleVersionHistory () 
    {
    }
}