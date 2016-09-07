@isTest
private class TestRestrictContactByName {

    @isTest static void TestRestrictInsertOneInvalidContact()
    {
        //Test Data setup
        //Create one invalid contact
        Contact con= new Contact(FirstName='TestContact', LastName='INVALIDNAME');
        
        //perform test
        Test.startTest();
        Database.SaveResult result= Database.insert(con,false);
        Test.stopTest();
        
        //verify the result
        //In this case, the insertion operation should be failed
       System.assert(!result.isSuccess());
       System.assert(result.getErrors().size()>0);
       System.assertEquals('The Last Name "'+con.LastName+'" is not allowed for DML',result.getErrors()[0].getMessage());
        
    }
     
    @isTest static void TestRestrictInsertOneValidContact()
    {
        //Setup test data
        //In this case insert valid contact
        Contact con = new Contact(FirstName='TestContact',LastName='Valid');
        
        //perform the test
        //Insert the contact
        Test.startTest();
        Database.SaveResult result = Database.insert(con,false);
        Test.stopTest();
        
        //Assert the tests or verify the the results as per the expectations
       System.assert(result.isSuccess());// no other asserts as contact is inserted and result is successful
    }
    
    @isTest static void TestRestrictUpdateOneInvalidContact()
    {
        //Setup TestData
        //In this case insert one valid contact and update it with invalid lastname
        Contact con= new Contact(FirstName='TestContact',LastName='Valid');
        Insert con;
        
        //Perform tests
        //update contact last name and perform update DML statement
        Test.startTest();
        con.LastName='INVALIDNAME';
        Database.SaveResult result= Database.update(con,false);
        Test.stopTest();
        
        //Assert results
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size()>0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',result.getErrors()[0].getMessage());
    }

        @isTest static void TestRestrictUpdateOneValidContact()
    {
        //Setup test data
        //In this case insert valid contact and update it during test
        Contact con = new Contact(FirstName='TestContact',LastName='Valid');
        insert con;
        //perform the test
        //Insert the contact
        Test.startTest();
        con.LastName='ValidLastNameUpdate';
        Database.SaveResult result = Database.update(con,false);
        Test.stopTest();
        
        //Assert the tests or verify the the results as per the expectations
       System.assert(result.isSuccess());// no other asserts as contact is inserted and result is successful
    }
    
    @isTest static void TestRestrictInsertBulkInvalidContacts()
    {
        //Setup test Data
        List<Contact> conList= new List<Contact>();
        conList.add(new contact(FirstName='TestContact1',LastName='INVALIDNAME'));
        conList.add(new contact(FirstName='TestContact2',LastName='INVALIDNAME'));
        
        //Perform Tests
        Test.startTest();
        Database.SaveResult[] results= Database.insert(conList,false);
        Test.stopTest();
      
        //Assert results
        for(Database.SaveResult sr: results)
        {
            System.assert(!sr.isSuccess());
            System.assert(sr.getErrors().size()>0);
            System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', sr.getErrors()[0].getMessage());
            
        }
        
        
    }
    @isTest static void TestRestrictUpdateBulkInvalidContacts()
    {
        //Setup test Data
        List<Contact> conList= new List<Contact>();
        List<Contact> conList2= new List<Contact>();
        Contact con1=new contact(FirstName='TestContact1',LastName='VALIDLNAME');
        Contact con2=new contact(FirstName='TestContact2',LastName='VALIDLNAME');
        conList.add(con1);
        conList.add(con2);
        insert conList;
        
        //Perform Tests
        Test.startTest();
        con1.LastName='INVALIDNAME';
        con2.LastName='INVALIDNAME';
        conList2.add(con1);
        conList2.add(con2);
        Database.SaveResult[] results= Database.update(conList,false);
        Test.stopTest();
      
        //Assert results
        for(Database.SaveResult sr: results)
        {
            System.assert(!sr.isSuccess());
            System.assert(sr.getErrors().size()>0);
            System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', sr.getErrors()[0].getMessage());
            
        }
        
        
    }
    @isTest static void TestRestrictInsertBulkValidContact()
    {
        
        //Setup test Data
        List<Contact> conList= new List<Contact>();
        conList.add(new contact(FirstName='TestContact1',LastName='VALIDLNAME'));
        conList.add(new contact(FirstName='TestContact2',LastName='VALIDLNAME'));
        
        //Perform Tests
        Test.startTest();
        Database.SaveResult[] results= Database.insert(conList,false);
        Test.stopTest();
      
        //Assert results
        for(Database.SaveResult sr: results)
        {
            System.assert(sr.isSuccess());
            //System.assert(sr.getErrors().size()>0);
            //System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', sr.getErrors()[0].getMessage());
            
        }
        
    }
        @isTest static void TestRestrictUpdateBulkValidContact()
    {
        
        //Setup test Data
        List<Contact> conList= new List<Contact>();
        List<Contact> conList2= new List<Contact>();
        Contact con1=new contact(FirstName='TestContact1',LastName='VALIDLNAME');
        Contact con2=new contact(FirstName='TestContact2',LastName='VALIDLNAME');
        conList.add(con1);
        conList.add(con2);
        insert conList;
        
        //Perform Tests
        Test.startTest();
        con1.LastName='VALIDNAME1';
        con2.LastName='VALIDNAME1';
        conList2.add(con1);
        conList2.add(con2);
        Database.SaveResult[] results= Database.update(conList,false);
        Test.stopTest();
      
        //Assert results
        for(Database.SaveResult sr: results)
        {
            System.assert(sr.isSuccess());
            //System.assert(sr.getErrors().size()>0);
            //System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', sr.getErrors()[0].getMessage());
            
        }
        
    }
}