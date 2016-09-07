public class myWrapperAccount {

List<Account> myAccounts;
List<AccountWrapper> myCustomAccounts;

public myWrapperAccount()
{

 myAccounts =new List<Account>();
 myCustomAccounts = new List<AccountWrapper>();

try
{
myAccounts=[select name,phone from account];

for(Account acc:myAccounts)
{

    if(acc.phone!=NULL)
    {
        myCustomAccounts.add(new AccountWrapper(acc,false));
        
    }
    else
    {
    myCustomAccounts.add(new AccountWrapper(acc,TRUE));
    
    }
}


}
catch(Exception e)
{

ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Fatal,''+e); 
ApexPages.addMessage(myMsg);

}


}


    public List<AccountWrapper> getData() {
        
        return myCustomAccounts;
        //return myAccounts;
        //return myCustomAccounts;
    }

}