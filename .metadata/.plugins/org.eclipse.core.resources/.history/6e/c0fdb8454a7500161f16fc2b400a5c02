global class SendLeadMorningMsg implements Schedulable
{

List<Lead> myLeads = new List<Lead>();
//List<Messaging.SingleEmailMessage> mails = new List<Messaging.SingleEmailMessage>();

global void execute(SchedulableContext ctx)
{

    myLeads=[select Id,FirstName,Email from Lead];
 
 try{   
    for(Lead currentLead:myLeads)
    {
    
    if(currentLead.FirstName!= null && currentLead.Email!= null){
            
           //governor limit for sending mails in developer edition is max 10
           
           //instead update a field
           String msg ='Dear' + currentLead.FirstName + ', '+'\n'+ 'Good Morning my friend.';  
           currentLead.SystemMsg__c=msg;
            
            
          
        }
    }
    
    }catch(Exception ex)
    {
    
    System.debug(ex);
    }
    
    
    }

}