public class ContactsListController {

    public List<Contact> getContacts()
    {
        List<Contact> contacts= Database.query('Select Id, FirstName, LastName from contact limit 10');
        return contacts;
    }
}