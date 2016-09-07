@isTest
private class TestVerifyDate {

    @isTest static void testCheckDates()
    {
        Date date1=Date.newInstance(2016,2,4);
        Date date2=Date.newInstance(2016,2,8);
      
        Date ResultCheckDates= VerifyDate.CheckDates(date1, date2);
        system.assertEquals(date2, ResultCheckDates);
        
    }
    @isTest static void testCheckDates2()
    {
        Date date1=Date.newInstance(2016,2,4);
        Date date2=Date.newInstance(2016,2,8);
        Date date3=date2.addDays(35);
       	Date date4=Date.newInstance(2016,2,29);
        Date ResultCheckDates= VerifyDate.CheckDates(date1, date3);
        system.assertEquals(date4, ResultCheckDates);
        
        
    }

        
}