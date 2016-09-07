public class AccountHandler {
    
    public static Account insertNewAccount(String name123)
    {
        if(name123!=NULL)
        {
            try
            {
            Account acc= new Account(Name=name123);
            insert acc;
            return acc;   
            }
            catch(DmlException e)
            {
                system.debug('Insert error message'+e.getMessage());
                return null;
            }
            
        }    
        return null;
        
    }

}