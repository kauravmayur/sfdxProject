// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class MetadataPackageVersion {
    global Id Id;
    global MetadataPackage MetadataPackage;
    global Id MetadataPackageId;
    global String Name;
    global String ReleaseState;
    global Integer MajorVersion;
    global Integer MinorVersion;
    global Integer PatchVersion;
    global Integer BuildNumber;
    global Datetime SystemModstamp;
    global Boolean IsDeprecated;
    global List<PackagePushRequest> PackagePushRequests;
    global List<PackageSubscriber> PackageSubscribers;

    global MetadataPackageVersion () 
    {
    }
}