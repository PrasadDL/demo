@istest
public class TestDoBMonthEmp
{

static testMethod void insertEmployee()
{

department__c d = new department__c();
d.name = 'adminDept';
insert d;


employee__c e = new employee__c();
e.name= 'testBob';
e.department__c=d.id;
e.DateOfBirth__c= date.today()+8000;

e.Salary__c=1000;
e.Gender__c='male';
 e.VisaStatus__c='f1'; 
insert e;


} 

}