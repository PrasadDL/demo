global class TestScheduledApexFromTestMethod implements Schedulable {

//Map<Id,SixMonthsSalary__c>
List<employee__c> employeeList = new List <employee__c>();
List<employee__c> UpdateEmployeeList;
 
   
   global void execute(SchedulableContext ctx) {
      
      
      employeeList= [select Id,SixMonthsSalary__c from employee__c];
      
      UpdateEmployeeList=new List <employee__c>();
      
      for(employee__c e:employeeList)
      {
      
      employee__c temp = new employee__c();
        
        temp.Id=e.Id; 
        
        temp.SixMonthsSalary__c=e.SixMonthsSalary__c+1;
         
          UpdateEmployeeList.add(temp);
      
      }
      
    update UpdateEmployeeList;
        
   }   
}