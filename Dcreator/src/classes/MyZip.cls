public class MyZip {

    public String currState { get; set; }
    public String currCity { get; set; }
    public String textData { get; set; }
    public String str { get; set; }


    public PageReference Show() {
        
        
        try
        {
       // USzip.USZipSoap myZip = new USzip.USZipSoap();
        //USzip.GetInfoByZIPResult_element myRes= new USzip.GetInfoByZIPResult_element(); 
        //myRes=myZip.GetInfoByZIP('95825');
        //System.debug('dump code:'+myRes);
       MyZipService.ZipCodeSoap myZip= new MyZipService.ZipCodeSoap();
       MyZipService.ArrayOfString myRes= new MyZipService.ArrayOfString();
       myRes=myZip.ZipCodeToCityState(textData);
       
       
       str= myRes.string_x[0];
       currCity=str.substring(0,str.length()-2);
       currState=str.substring(str.length()-2,str.length());
       
       
        
        }
        
        catch(Exception ex)
       {
       
       
       ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.Fatal,''+ex);
       ApexPages.addMessage(myMsg);
       }
        
        return null;
    }


    
    
}