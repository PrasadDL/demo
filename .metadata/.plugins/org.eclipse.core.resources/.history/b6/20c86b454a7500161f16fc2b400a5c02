public class MyZipRest {

    public String currState { get; set; }

    public String currCity { get; set; }

    public String textData { get; set; }

    public PageReference Show() {
    
    try
    {
    
    
    
    Http httpProtocol = new Http();
    HttpRequest request = new HttpRequest();
    String endPointURL= 'http://www.zippopotam.us/us/'+textData;
    
        request.setEndPoint(endPointURL);
        request.setMethod('GET');
        HttpResponse response = httpProtocol.send(request);

    JSONParser parser = JSON.createParser(response.getBody());
    /*
    sample response:
    {"post code": "10016", "country": "United States", "country abbreviation": "US", 
    "places": [{"place name": "New York City", "longitude": "-73.9781", "state": "New York", "state abbreviation": "NY", "latitude": "40.7443"}]}*/
    
    
    while(parser.nextToken()!=NULL)
    {
    
    if(parser.getCurrentToken()==JSONToken.FIELD_NAME && parser.getText()=='state abbreviation')
    {
    parser.nextToken();
    currState=string.ValueOf(parser.getText());

        
    }
  if(parser.getCurrentToken()==JSONToken.FIELD_NAME && parser.getText()=='place name')
    {
    parser.nextToken();
    currCity=string.ValueOf(parser.getText());

        
    }
  
  
    
    }
  
    
    }Catch(Exception ex)
    {
           ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Fatal,''+ex);
           ApexPages.addMessage(myMsg);

    
    }
    
    
        return null;
    }

}