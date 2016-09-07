public class myCustomAccountPage {

    public myCustomAccountPage(ApexPages.StandardController controller) {

    }
 public PageReference Cancel() {
    
    return (new pageReference('/001/o'));
    
    }

   
    public String aphone { get; set; }

    public String aname { get; set; }

    public PageReference Save() {
    
    Account acc1= new Account();
    
    acc1.name=aname.toUpperCase();
    acc1.website='www.'+aphone;
 
    
    try
    {
    insert acc1;
    }Catch(Exception ex)
    {
    
    ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,''+ex);
    apexpages.addmessage(myMsg);
    
    }
   
    PageReference p = new PageReference('/'+acc1.id);
        return p;
    }

}