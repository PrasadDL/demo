public class SalaryHike
{
public SalaryHike(employee__c e)
{

Map<Id,Decimal> department = new Map<Id,Decimal>();

List<Department__c> myDepartmentList=new List<Department__c>();
myDepartmentList= [select Id,TotalEMP__c from Department__c];

for(Department__c dept : myDepartmentList)
{

department.put(dept.Id,dept.TotalEMP__c);
}

e.SixMonthsSalary__c = (department.get(e.department__c)>10)?e.Salary__c*1.1:e.Salary__c;  

}

}