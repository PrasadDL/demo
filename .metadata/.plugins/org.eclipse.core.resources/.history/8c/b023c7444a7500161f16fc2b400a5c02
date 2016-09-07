public class DoBMonthEmp
{
public static final Map<Integer, String> month = new Map<Integer,String>
{1=>'January',
2=>'February',
3=>'March',
4=>'April',
5=>'May',
6=>'June',
7=>'July',
8=>'August',
9=>'September',
10=>'October',
11=>'November',
12=>'December'};

public DoBMonthEmp(employee__c e)
{
e.DOBMonth2__c =month.get(e.DateOfBirth__c.month());
}

}