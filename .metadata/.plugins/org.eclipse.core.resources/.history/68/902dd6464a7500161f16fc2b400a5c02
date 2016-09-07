public class myWrapper {

//    public String boolval { get{return 'true';} set; }


List<lead> Leads;
List<SerialLead> serialLeads;
public myWrapper()
{
Leads = new List<lead>();
serialLeads = new List<SerialLead>();
try
{ 
Leads=[select name, phone from lead];

Integer index = 1;
for(Lead cur: Leads)
{
serialLeads.add(new SerialLead(cur,index++));

}
}catch(Exception e)
{
ApexPages.Message myMsg= new ApexPages.Message(ApexPages.Severity.Fatal,''+e);
ApexPages.addMessage(myMsg);
}

}
   
   
    public List<SerialLead> getData() {
      
       // return Leads;
        return  serialLeads;       
       // return null;
    }
 
  public Class SerialLead
    {
    
         public Lead myLead {get; set;}
         public Integer serial{get; set;}
        Public SerialLead(Lead myLead,Integer serial)
        {
        this.myLead=myLead;
        this.serial=serial;
        }
        
    
    }
 
       
}