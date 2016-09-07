@isTest
private class AnimalLocatorTest {

    @isTest static  void testGetByIdCallout()
    {
     // Set mock callout class 
    	Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // This causes a fake response to be sent
    	// from the class that implements HttpCalloutMock. 
    	String response= AnimalLocator.getAnimalNameById(1);
        HttpResponse httpresult=AnimalLocator.makeGetCallout(1);
        //Assert Results here for response
       	System.assertEquals('chicken',response, 'The name of the animal does not match');
        System.assertNotEquals(null,httpresult,'The callout returned a null response');
        System.assertEquals(200,httpresult.getStatusCode(),'The status is not 200');
        System.assertEquals('application/json',httpresult.getHeader('Content-Type'),'The content type value is not expected.');
        Map<String, Object> httpresultAnimal = (Map<String, Object>)JSON.deserializeUntyped(httpresult.getBody());
        
        Map<String,Object> animalInfo = (Map<String,Object>) httpresultAnimal.get('animal');
        
        System.assertEquals(4, animalInfo.size(),'The map size should be 4');
        

    }
}