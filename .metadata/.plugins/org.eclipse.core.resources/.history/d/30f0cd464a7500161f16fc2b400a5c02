public class mySingleAccount {

public Account acc1;

public mySingleAccount()
{


try{

acc1=[select name from account where id =:ApexPages.currentPage().getParameters().get('id')];
}catch(Exception e)

{

//print the error message on visual force
 ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.FATAL,''+e);
 apexpages.addmessage(myMsg);
 //apexpages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,e));
 
}

}


    public Account getAccount() {
        return acc1;
    }



    public String mySingleAccount { get{return 'hello';} set{mySingleAccount=value;} }




}