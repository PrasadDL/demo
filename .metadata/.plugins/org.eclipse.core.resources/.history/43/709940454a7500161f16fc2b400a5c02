@RESTResource(URLMapping='/PrasadService/*')
 
global Class MyLeadServiceNewRest
{


    
   // @HttpGet
    global static Lead getLeadInfo(RequestClass rs)

    {
        lead temp = new lead();
         temp=[select firstname, lastname, company from lead where email=:rs.emailId LIMIT 1];

            return temp;            

    } 

global Class RequestClass
{
global String emailId{get;set;}
}


@HttpGet
webService static List<Lead> getAllLeads()

    {
        List<lead> temp = new List<lead>();
        temp=[select firstname, lastname, company from lead];
        return temp;            

    } 

@HttpPost
webService static MyResult createLead(List<InputRequest> inputList)

    {
    
    List<Lead> allLeads= new List<Lead>();
    MyResult resultObj= new MyResult();
        //String result='';
         try
         {
             for(InputRequest currInput:inputList)
             {
         
            lead temp1 = new lead();
            temp1.FirstName=currInput.FirstName;
            temp1.LastName=currInput.LastName;
            temp1.Company=currInput.Company;
            temp1.AnnualRevenue=currInput.annualRev;
            temp1.Email=currInput.emailId;
            temp1.VerifiedEmail__c=currInput.verifyEmail;
        
            //id=00G37000000Za3M Queue id
            //temp1.OwnerId=label.Queue; 
            //
            
            temp1.OwnerId=label.Label_for_Queue_Id;
            allLeads.add(temp1);
            
            }    
         
         
         Database.SaveResult[]  resultStr =  Database.insert(allLeads,false);
        
             //insert temp1;
         
         
         String tempStr = 'some error'; 
         resultObj.resultCode=201;
         resultObj.success=true;
         for(Integer i=0;i<resultStr.size();i++)
         {
            // tempStr =resultStr.get(i).FirstName;
             
              //resultObj.error 
             if(resultStr.get(i).isSuccess())
             {
             resultObj.leadId.add(resultStr.get(i).getId());
             
             }
             else if(!resultStr.get(i).isSuccess())
             {
             
             Database.Error error = resultStr.get(i).getErrors().get(0);
             resultObj.error.add(tempStr+error.getMessage());
             }
             
          
             
         }
         
         
         //resultObj.leadId=temp1.Id;
           
         }catch(Exception ex)
         {
         
         //
         resultObj.resultCode=501;
         resultObj.success=false;
         //resultObj.error= 'Exception :'+ex;
         
         }
         return resultObj; 
    } 

global Class MyResult
{

public Integer resultCode;
public boolean success;
public List<String> error = new List<String>();
public List<String> leadId = new List<String>();


}

global Class InputRequest
{

public String FirstName;
public String LastName;
public String emailId;
public Integer annualRev;
public String Company;
public boolean verifyEmail;

}



}