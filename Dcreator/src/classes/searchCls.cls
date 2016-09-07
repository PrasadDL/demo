public class searchCls {

    public PageReference chk() {
    msg1=(sval.length()<3)?'Please enter a search string at least 2 characters long.':'';
        return null;
    }


    public String msg1 { get; set; }
List<Account> ac= new List<Account>();
    public List<Account> getData() {
        return ac;
    }


    public PageReference search123() {
    ac=(List<Account>)[FIND :sval IN ALL FIELDS RETURNING Account(name, phone, fax)][0];
        return null;
    }


    public String sval { get; set; }
}