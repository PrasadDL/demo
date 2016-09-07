public Class myClass
{

public myClass(employee__c e, Integer flag)
{

e.SixMonthsSalary__c= (flag==2)?e.Salary__c*6 : (e.Salary__c*6)+501;

}

}