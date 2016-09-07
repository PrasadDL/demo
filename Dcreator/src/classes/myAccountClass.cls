public class myAccountClass {

    public PageReference update123() {
        
        
        update myList;
        PageReference p = new PageReference('/apex/myCustomPage2');
         
        return p;
    }


public Boolean flag;
    public Boolean getDisplay2() {
        
        return flag;
    }




    public  Boolean display { get; set; }

    public PageReference show() {
        
        flag=TRUE;
   // System.debug();    
        
        myList= [select name,phone,fax from account order by name desc]; 
        return null;
    }


    List<Account> myList =new List<Account>();
    
     
    public List<Account> getAccounts() {
        myList= [select name, phone, fax from account order by name desc];
           
        return myList;
    }
    
    
    

}