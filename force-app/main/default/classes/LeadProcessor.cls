global class LeadProcessor implements Database.Batchable<sObject>{
    
    public integer recordsCounts = 0;
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('Select id, name, leadSource from Lead');
    }
    public void execute(Database.BatchableContext BC, list<Lead> scope){
        system.debug('***LeadProcessor debug***');
        for(Lead ld: scope){
            ld.leadSource = 'Dreamforce';
            recordsCounts = recordsCounts + 1;
        }
        update scope;
    }
    public void finish(Database.BatchableContext BC){}
}
