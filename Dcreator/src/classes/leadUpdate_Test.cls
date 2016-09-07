@isTest(SeeAllData=true)
  private class leadUpdate_Test { 

static testMethod void leadUpdate_TestMethod (){
     Profile prof = [select id from profile where name='system Administrator'];
     User usr = new User(alias = 'usr', email='us.name@vmail.com',
                emailencodingkey='UTF-8', lastname='lstname',
                timezonesidkey='America/Los_Angeles',
                languagelocalekey='en_US',
                localesidkey='en_US', profileid = prof.Id,
                username='testuser128@testorg.com',receive_lead__c=true,LastAssigned__c=datetime.now());
                insert usr;

          Lead lead=new Lead(LastName='Doe',FirstName='John',Company='Test',Status='Open',AnnualRevenue=2500);
insert lead;  
Lead ledRec1 = [SELECT Id,Name,Status,OwnerId FROM Lead limit 1 ];

   ledRec1.OwnerId = usr.Id;
   usr.LastAssigned__c=datetime.now();
   update ledRec1 ;
   update usr;
   

   
  }
}