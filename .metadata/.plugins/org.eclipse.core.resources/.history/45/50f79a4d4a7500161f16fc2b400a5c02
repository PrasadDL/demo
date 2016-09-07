trigger emptrig on Employee__c (before insert, before update) {
for(employee__c i: trigger.new)
{

myClass obj;


// store the owner information
 //User owner = [select Name, Email from User where id = :i.CreatedById LIMIT 1];

if(trigger.isinsert)
{

//i.SixMonthsSalary__c=(i.Salary__c*6)+501;
obj= new myClass(i,1);

}

else if(trigger.isupdate)
{

//obj= new myClass(i,0);

}

/**/// put email alert here
   // String userEmail= owner.Email; 
   // Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage(); 
  //  String[] toAddresses = new String[] {userEmail}; 
  //  mail.setToAddresses(toAddresses); 
  //  mail.setSubject('Automated email: Employee created or updated'); 
  //  String body = 'Please review'; 
  //  mail.setPlainTextBody(body); 
  //  Messaging.sendEmail(new Messaging.SingleEMailMessage[]{mail});//

}
}