public class AnimalsCallouts {
    
    public static HttpResponse makeGetCallout()
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()==200)
        {
            //deserialize the json string
            Map<String, Object> results= (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            
            //cast the values in map as a list
            List<Object> animals = (List<Object>) results.get('animals');
            
            System.debug('Received following animals from web service:');
            for(Object animal: animals)
            {
                system.debug(animal);
            }
            
        }
        
        return response;
    }
    
    public static HttpResponse makePostCallout() 
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setBody('{"name":"mighty moose"}');
        HttpResponse response = http.send(request);
        
        if(response.getStatusCode()!=201)
        {
            System.debug('The status code was not expected'+' '+response.getStatusCode()+' '+response.getStatus());
            
        }
        else
        {
            system.debug(response.getBody());
        }
        return response;

    }


}