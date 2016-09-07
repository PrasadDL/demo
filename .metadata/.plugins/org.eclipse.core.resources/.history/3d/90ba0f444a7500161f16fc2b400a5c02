public class AnimalLocator {

    public static String getAnimalNameById(Integer i)
    {
       
        
        //Http http = new Http();
        
        //
        //HttpRequest request = new HttpRequest();
        //request.setMethod('GET');
        //request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+i);
       	//HttpResponse response= http.send(request);
        
        String responseString;
        HttpResponse response=makeGetCallout(i);
        
        if(response.getStatusCode()==200)
        {
            
            //deserialize the json string
            Map<String, Object> results= (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            Map<String,Object> animalInfo=(Map<String,Object>)results.get('animal');
            //System.debug('Body of json string where animals is a key');
            System.debug('Name of the animal is: ');
           // System.debug(results.get('animal'));
            System.debug(animalInfo.get('name'));
            responseString= (String)animalInfo.get('name');
            
        }
        return responseString;        
    }
    public static HttpResponse makeGetCallout(Integer i)
    {
        Http http = new Http();
        String responseString;
        HttpRequest request = new HttpRequest();
        request.setMethod('GET');
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+i);
       	HttpResponse response= http.send(request);
        return response;
    }
}