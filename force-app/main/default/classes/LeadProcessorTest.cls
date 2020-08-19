@isTest
public class LeadProcessorTest {
	@testSetup 
    static void setup(){
        List<Lead> leadList = new List<Lead>();
        for(integer i=1; i<=200; i++){
            Lead l = new Lead();
            l.Lastname = 'Test Lead'+i;
            l.Company = 'Test Company'+i;
            leadList.add(l);
        }
        insert leadList;
    }
    
    @isTest
    static void testBatch(){
        Test.startTest();
        	LeadProcessor lp = new LeadProcessor();
        	id batchId = Database.executeBatch(lp, 200);
        Test.stopTest();
        system.assertEquals(200, [SELECT COUNT() FROM Lead WHERE LeadSource = 'Dreamforce']);
    }
}