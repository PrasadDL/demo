public class MyEmailVerifyLead {


    public MyLeadService.MyResult temp;

    public boolean verifyEmail { get; set; }
    public String textCompany { get; set; }

    public Integer textAnnualRevenue { get; set; }

    public String textEmail { get; set; }

    public String textLastName { get; set; }

    public String textFirstName { get; set; }

    public PageReference nullify() {
                textCompany = null;
        textAnnualRevenue=null;
        textLastName=null;
        textFirstName=null;
        textEmail=null;
        
        
        return null;
    }


    public PageReference Create() {
        try
        {
            verifyEmail=false;
            if(textEmail!=null)
            {
            String username   = 'prasaddl1991@gmail.com';
            String password   = 'mhl108';
            String email      = 'email to be cheked';
            String api_url    = 'http://api.verify-email.org/api.php?';
        
        //http://api.verify-email.org/api.php?usr=prasaddl1991@gmail.com&pwd=mhl108&check=Prasaddl1991@gmail.com
            Http httpProtocol = new Http();
            HttpRequest request = new HttpRequest();
            String endPointURL= api_url+'usr='+username+'&pwd='+password+'&check='+textEmail;
    
            request.setEndPoint(endPointURL);
            request.setMethod('GET');
            HttpResponse response = httpProtocol.send(request);
            
             JSONParser parser = JSON.createParser(response.getBody());
             while(parser.nextToken()!=NULL)
            {
    
                     if(parser.getCurrentToken()==JSONToken.FIELD_NAME && parser.getText()=='verify_status')
                    {
                        parser.nextToken();
                        if(Integer.ValueOf(parser.getText())==1)
                        {
                                verifyEmail=true;
                        }
                        
                    }
            }
        
            }
            
            temp=MyLeadService.createLead(textFirstName,textLastName,textEmail,textAnnualRevenue,textCompany,verifyEmail); 
        
        
        }
        
        catch(Exception ex)
       {
       
       
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Fatal,''+ex);
       ApexPages.addMessage(myMsg);
       }
      
       nullify();
       //ApexPages.AddMessage(new ApexPages.Message(ApexPages.Severity.CONFIRM,'Record Created Successfully'+
       //'\n ResultCode:'+temp.resultCode+'\n Success:'+temp.success+' \n Error:'+temp.error+'\n LeadId:'+temp.leadId)); 
      
      system.debug('Respose'+'Record Created Successfully'+
       '\n ResultCode:'+temp.resultCode+'\n Success:'+temp.success+' \n Error:'+temp.error+'\n LeadId:'+temp.leadId);
      
       return new PageReference('/'+temp.leadId);

    }

}