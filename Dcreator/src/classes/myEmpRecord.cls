public class myEmpRecord {

    public Employee__c emp1 = new employee__c();

    public String ename { get; set; }


public void myEmpRecord()
{}


    public PageReference Submit() {
    
    try{

        insert emp1;
}catch(Exception e)

{

//print the error message on visual force
 ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,''+ename);
 apexpages.addmessage(myMsg); 
}

    
    return null;
    }
 









public Employee__c getEmployee(){        
        return emp1;
    }





/*
//department__c d = new department__c();
//d.name = 'adminDept';
//insert d;


//employee__c e = new employee__c();
//e.name= 'testBob';
//e.department__c=d.id;
//e.DateOfBirth__c= date.today()+8000;

//e.Salary__c=1000;
//e.Gender__c='male';
 //e.VisaStatus__c='f1'; 
//insert e;*/
}