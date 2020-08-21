global class LeadProcessor implements Database.Batchable<sObject>{
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator('SELECT ID, LeadSource FROM Lead');
    }

    public void execute(Database.BatchableContext BC, list<Lead> scope){
        system.debug('****LeadProcessor debug****');
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