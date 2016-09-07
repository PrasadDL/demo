public class AccountListCon {

private integer totalRecs=0;
transient List<account> myaccounts;
private integer LimitSize= 10;
private integer OffsetSize = 0;

public AccountListCon()
{
try{
totalRecs=[select count() from account];
}
catch(Exception ex)
{
ApexPages.Message myMsg= new ApexPages.Message(ApexPages.Severity.Fatal,''+ex); 
ApexPages.addMessage(myMsg);

}

}


    public boolean getNxt() {
        if((OffsetSize+LimitSize)>totalRecs)
        {
        return true;
        }
        else
        {
        return false;
        }
    }


    public boolean getPrev() {
        if(OffsetSize==0)
        {
        return true;
        }
        else
        {
        return false;
        }
    }


    public void LastPage() {

        OffsetSize = totalRecs-math.mod(totalRecs,LimitSize);
    }


    public void NextPage() {

    OffsetSize=OffsetSize+LimitSize;

    }


    public void PreviousPage() {


    OffsetSize=OffsetSize-LimitSize;


    }


    public void FirstPage() {
      
      OffsetSize = 0;
    }
    public List<Account> getData() {
        myaccounts=Database.Query('SELECT Name, phone FROM account LIMIT :LimitSize OFFSET :OffsetSize');
        System.debug('Values are' + myaccounts);
        return myaccounts;
        //return null;
    }

}