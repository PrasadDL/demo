public class ContactAndLeadSearch {

   public static List<List<sObject>> searchContactsAndLeads(string inputPar)
   {
       List<List<SObject>> myObj= new List<List<SObject>>();
       
       if(inputPar!=null)
       {
           myObj= [find :inputPar in NAME Fields returning Contact,Lead]; 
           return myObj;    
       }
       return null;
       
   }
}