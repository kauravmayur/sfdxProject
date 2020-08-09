// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class QuoteLineItemChangeEvent {
    global Id Id;
    global String ReplayId;
    global Object ChangeEventHeader;
    global String LineNumber;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Quote Quote;
    global Id QuoteId;
    global PricebookEntry PricebookEntry;
    global Id PricebookEntryId;
    global OpportunityLineItem OpportunityLineItem;
    global Id OpportunityLineItemId;
    global Double Quantity;
    global Decimal UnitPrice;
    global Double Discount;
    global String Description;
    global Date ServiceDate;
    global Product2 Product2;
    global Id Product2Id;
    global Integer SortOrder;

    global QuoteLineItemChangeEvent () 
    {
    }
}