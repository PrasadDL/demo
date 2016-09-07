@isTest
global class AnimalLocatorMock implements HttpCalloutMock{

   global HttpResponse respond(HttpRequest request)
   {
       //create a fake httpGet response
       HttpResponse response = new HttpResponse();
       String result;
       response.setBody('{"animal":{"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
       response.setStatusCode(200);
       response.setHeader('Content-Type', 'application/json');
       return response;
       
   }
       
    
}