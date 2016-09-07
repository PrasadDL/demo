public class Employeeobj {

public Employee__c emp{get;set;}
public String dname;

    public Employeeobj(ApexPages.StandardController controller) {  
        this.emp= (Employee__c)controller.getRecord();
        this.dname= emp.Department__r.Name;
    }

    public String getdName() {
    {
        dname = [SELECT Name FROM Department__c WHERE Id = :emp.Department__c].name;
    }

    return dname;
}

Employee__c e;

public Employee__C getEmployee() {
    if(e == null) e = new Employee__c();
        e.Department__c = e.Department__r.Id;
        e.name='abc';
          
        return e;
}

public PageReference save() {
    try {
    system.debug('*************' +e);
    insert e;

    PageReference newemp= new PageReference('/apex/testemp2?Id='+e.Id);
    system.debug('test::::::::::::' + newemp);
    newemp.setRedirect(true);
        return newemp;
    }
    catch (DMLException e) {
        ApexPages.addMessage(new ApexPages.message(ApexPages.severity.ERROR, 'Error creating new employee.'));
    return null;
}

    return null;
  }
}