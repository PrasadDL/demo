global class SendLeadMorningMsgBatch implements Schedulable
{

global void execute(SchedulableContext ctx)
{

 try{   
    
    
    batchLeadUpdate b = new batchLeadUpdate();
    database.executebatch(b,99);

       
    }catch(Exception ex)
    {
    System.debug(ex);
    }
    
   
    }

}