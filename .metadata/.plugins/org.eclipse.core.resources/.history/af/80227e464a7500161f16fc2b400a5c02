global class batchLeadUpdate implements Database.Batchable<sObject> {

    
     global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'select Id,EmpName__c,SystemMsg__c from Employee__c';
        return Database.getQueryLocator(query);
    }
   
    global void execute(Database.BatchableContext BC, List<Employee__c> myemps)
    {
        System.debug(myemps);
         for(Employee__c currentemp : myemps)
         {
              String msg ='Dear' + currentemp.EmpName__c + ', '+'\n'+ 'Good Morning my friend.';  
              currentemp.SystemMsg__c=msg;
                
         }
         update myemps;
         System.debug(myemps);
    }   
    global void finish(Database.BatchableContext BC)
    {
        
        //send confirmation here
    }
}