public class ContactSearch {

    public static List<Contact> searchForContacts(String LastNamenP,String postalCode)
    {
        List<Contact> con= new List<Contact>();
        if(LastNamenP!=Null && postalCode!=NULL)
        {
         try
        {
        con= [Select id,name from contact where LastName=:LastNamenP AND MailingPostalCode=:postalCode]; 
          	return con;  
        }
        catch(Exception e)
        {
            System.debug('DML exception'+e.getMessage());
        }
           
        }
        return null;
    }
}