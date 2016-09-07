// wrapper (public) class    

public class AccountWrapper
{

public Account myAccount {get;set;} 
public Boolean phoneNull{get;set;}
public AccountWrapper(Account myAccount,Boolean phoneNull)
{

//
this.myAccount=myAccount;
this.phoneNull=phoneNull;
}

}