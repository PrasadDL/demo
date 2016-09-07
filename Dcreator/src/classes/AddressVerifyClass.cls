public Class AddressVerifyClass
{

@future (callout=true)
public  Static void Check(ID Aid) {
        
        
        try
        {
        Account temp =new Account();
        
      

            temp=[select id, VerifyBillingAddr__c,BillingStreet, BillingCity, BillingState,BillingPostalCode, BillingCountry from Account where id=:Aid];
                      System.debug('*******B4****Temp check value****'+temp);

            String Address=temp.BillingStreet+','+temp.BillingCity+','+temp.BillingState;         
            String Addressoutput = Address.Replace(' ', '+');           
           
           String BillingCity='los+vegas';
           String BillingState='NV';
            String API_KEY='AIzaSyCuBCHmSIGaw__Un5xxgC0vnEf0Ls2yqwg';
            String api_url    ='https://maps.googleapis.com/maps/api/geocode/json?';
            Http httpProtocol = new Http();
            HttpRequest request = new HttpRequest();
        
         String endPointURL= 'https://maps.googleapis.com/maps/api/geocode/json?address=2253+Northrop+avenue,+sacramento,+CA&key=AIzaSyCuBCHmSIGaw__Un5xxgC0vnEf0Ls2yqwg';

//   String endPointURL= 'https://api.smartystreets.com/street-address?street=3785+South+Las+Vegs+Av&city=Los+Vegas&state=NV&auth-id=6a1d52be-18c6-421e-8d96-501f231a5b1e&auth-token=Ia2DTB0mXQeVC2n3p5Ow'; 
    
         // String endPointURL=api_url+'address='+Addressoutput+'&key='+API_KEY;
            System.debug('*******ENDPOINT************URL:'+endPointURL);
            
            request.setEndPoint(endPointURL);
            request.setMethod('GET');
            HttpResponse response = httpProtocol.send(request);
            
             JSONParser parser = JSON.createParser(response.getBody());
             while(parser.nextToken()!=NULL)
            {
    
                     if(parser.getCurrentToken()==JSONToken.FIELD_NAME && parser.getText()=='Status')
                    {
                        parser.nextToken();
                        if(String.ValueOf(parser.getText())=='OK')
                        {
                                temp.VerifyBillingAddr__c=true;
                                
                                System.debug('******Inside IF*****Temp check value****'+temp);
                        
                        }
                        
                    }
            }
        
             update temp;
            System.debug('*****Outside IF******Temp check value****'+temp);
                             
        }
        
        catch(Exception ex)
       {
       
       
            }

          
      
    }


}