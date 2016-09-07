public Class EmailVerifyClass
{

@future (callout=true)
public  Static void Check(ID Lid) {
        
        
        try
        {
        lead temp =new lead();
        temp=[select id, VerifiedEmail__c , firstname, lastname, email  from lead where id=:Lid];
                      System.debug('*******B4****Temp check value****'+temp);
                         
            String username   = 'prasaddl1991@gmail.com';
            String password   = 'mhl108';
            String email      = 'email to be cheked';
            String api_url    = 'http://api.verify-email.org/api.php?';
        
        //http://api.verify-email.org/api.php?usr=prasaddl1991@gmail.com&pwd=mhl108&check=Prasaddl1991@gmail.com
            Http httpProtocol = new Http();
            HttpRequest request = new HttpRequest();
            String endPointURL= api_url+'usr='+username+'&pwd='+password+'&check='+temp.email;
    
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
                                temp.VerifiedEmail__c=true;
                               
                                System.debug('***********Temp check value****'+temp);
                        
                        }
                        
                    }
            }
        
         update temp;
            System.debug('***********Temp check value****'+temp);
                             
        }
        
        catch(Exception ex)
       {
       
       
            }

          
      
    }


}