global Class MyLeadService
{

    webService static Lead getLeadInfo(String emailId)

    {
        lead temp = new lead();
         temp=[select firstname, lastname, company from lead where email=:emailId LIMIT 1];

            return temp;            

    } 

webService static List<Lead> getAllLeads(String emailId)

    {
        List<lead> temp = new List<lead>();
         temp=[select firstname, lastname, company from lead];

            return temp;            

    } 
    
    webService static MyResult createLead(String FirstName ,String LastName,String emailId,Integer annualRev,String Company,boolean verifyEmail)

    {
    
    MyResult resultObj= new MyResult(); 
        //String result='';
         try
         {
        lead temp1 = new lead();
        temp1.FirstName=FirstName;
        temp1.LastName=LastName;
        temp1.Company=Company;
        temp1.AnnualRevenue=annualRev;
        temp1.Email=emailId;
        temp1.VerifiedEmail__c=verifyEmail;
        
        
        //id=00G37000000Za3M Queue id
        //temp1.OwnerId=label.Queue; 
        temp1.OwnerId=label.Label_for_Queue_Id;
         insert temp1;
         resultObj.resultCode=201;
         resultObj.success=true;
         resultObj.leadId=temp1.Id;
           
         }catch(Exception ex)
         {
         
         //
         resultObj.resultCode=501;
         resultObj.success=false;
         resultObj.error= 'Exception :'+ex;
         
         }
         return resultObj; 
    } 

global Class MyResult
{

public Integer resultCode;
public boolean success;
public String error;
public Id leadId;


}


}