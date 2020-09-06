public class LeadProcessor implements Database.Batchable<sObject>{
    public integer recordsCounts = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT ID, LeadSource FROM Lead');
    }

    public void execute(Database.BatchableContext bc, list<Lead> scope){
        //system.debug('****LeadProcessor debug update****');
        system.debug('****LeadProcessor debug update****');
        for(Lead ld: scope){
            ld.leadSource = 'Dreamforce';
            recordsCounts = recordsCounts + 1;
        }
        update scope;
    }
    
global void finish(Database.BatchableContext bc){
        System.debug('***** LeadProcessor Finished *****');
    }
}