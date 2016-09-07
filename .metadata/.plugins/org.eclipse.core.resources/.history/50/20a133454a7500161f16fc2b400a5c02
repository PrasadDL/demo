public class MyIp {

    public String CountryCode { get; set; }

    public String currCountry { get; set; }

    public String textData { get; set; }

    public PageReference Show() {
       
       if(textData!=NULL)
       {
       
       
               
        try
        {
        
         GeoIPnew.GeoIPServiceSoap myip = new GeoIPnew.GeoIPServiceSoap();
         GeoIPnew.GeoIP myRes=new GeoIPnew.GeoIP();
         myRes=myip.GetGeoIP(textData);
         
             currCountry=myRes.CountryName;
             CountryCode=myRes.CountryCode;
        
        }
        
        catch(Exception ex)
       {
       
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Fatal,''+ex);
       ApexPages.addMessage(myMsg);
       }
     }
     else
     {
     
     //print error
     
     }
       
       
        return null;
    }

}