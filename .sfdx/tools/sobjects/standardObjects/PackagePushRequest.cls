// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class PackagePushRequest {
    global Id Id;
    global MetadataPackageVersion PackageVersion;
    global Id PackageVersionId;
    global Datetime ScheduledStartTime;
    global String Status;
    global Datetime SystemModstamp;
    global List<PackagePushJob> PackagePushJobs;

    global PackagePushRequest () 
    {
    }
}