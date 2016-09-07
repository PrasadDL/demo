@isTest
public class ParkLocatorTest {

        @isTest static void testCallout() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        
        List<string> result = ParkLocator.country('India');
        // Verify that a fake result is returned
        System.assertEquals(3, result.size());
        System.assertEquals('park1', result.get(0),'String 1st value does not match');
        System.assertEquals('park2', result.get(1),'String 2nd value does not match');
        System.assertEquals('park3', result.get(2),'String 3rd value does not match');
        }
}