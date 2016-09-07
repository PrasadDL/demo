trigger ClosedOpportunityTrigger on Opportunity (after insert,after update) {

    List<opportunity> oppsUpdateTasks =[select Id from opportunity 
                                        where Id IN :Trigger.New AND StageName='Closed Won'];
    List<Task> tasksCreate= new List<Task>();
   
    for(opportunity p : oppsUpdateTasks)
    {
        tasksCreate.add(new Task(WhatId=p.Id,
                              	Subject='Follow Up Test Task'));
    }
   
    if(tasksCreate.size()>0)
    { 
        try
        {
        insert tasksCreate;    
        }
        catch(DMLException e)
        {
            system.debug('DML Exception message: '+ e.getMessage());
        }
        
    }
    
}