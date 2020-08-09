@isTest
public class LeadProcessorTest{
    @testSetup
    static void setUp(){
        list<Lead> leadList = new list<Lead>();
        for(integer i=1; i<=200; i++){
            lead l = new lead();
            l.LastName = 'TestLN '+i;
            l.Company = 'Company '+i;
            l.Status = 'Open - Not Contacted';
            leadList.add(l);
        }
        insert leadList;
    }  
    
    static testMethod void LeadProcessorTestMethod(){
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();

        // after the testing stops, assert records were updated properly
        System.assertEquals(200, [select count() from Lead where LeadSource = 'Dreamforce']);
    }
}