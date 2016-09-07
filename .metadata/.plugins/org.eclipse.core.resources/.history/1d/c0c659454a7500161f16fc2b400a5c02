public class MyServiceTestLead2 {

    public PageReference nullify() {
        textCompany = null;
        textAnnualRevenue=null;
        textLastName=null;
        textFirstName=null;
        textEmail=null;
        return null;
    }


     public MyLeadService.MyResult temp;   
    public String textCompany { get; set; }

    public Integer textAnnualRevenue { get; set; }

    public String textLastName { get; set; }

    public String textFirstName { get; set; }

    public String textEmail { get; set; }

    public PageReference Create() {

     try
        {
        
            temp=MyLeadService.createLead(textFirstName,textLastName,textEmail,textAnnualRevenue,textCompany); 
        
        
        }
        
        catch(Exception ex)
       {
       
       
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Fatal,''+ex);
       ApexPages.addMessage(myMsg);
       }
      
       nullify();
       ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Record Created Successfully'+
       '\n ResultCode:'+temp.resultCode+'\n Success:'+temp.success+' \n Error:'+temp.error+'\n LeadId:'+temp.leadId)); 
      
      system.debug('Respose'+'Record Created Successfully'+
       '\n ResultCode:'+temp.resultCode+'\n Success:'+temp.success+' \n Error:'+temp.error+'\n LeadId:'+temp.leadId);
      
       return new PageReference('/'+temp.leadId);

      }

}