public class DependentObjects
{

    public String currVal { get; set; }
    public String Country {get;set;}
    public String City {get;set;}
 
    

    public List<SelectOption> getCountries()
    {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--- None ---'));        
        options.add(new SelectOption('INR','India'));
        options.add(new SelectOption('USD','America'));
        options.add(new SelectOption('JPY','Japanese'));
        
        return options;
    } 
 
    
    public List<SelectOption> getCities()
    {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('None','--- None ---'));        
        options.add(new SelectOption('INR','India'));
        options.add(new SelectOption('USD','America'));
        options.add(new SelectOption('JPY','Japanese'));
      
        return options;
   
        return options;
    }
    
    public PageReference Submit()
    {
    try
    {
    myCurrencyService.CurrencyConvertorSoap  soapct= new myCurrencyService.CurrencyConvertorSoap();
    
    currVal=string.valueOf(soapct.ConversionRate(Country,City));
    }
    catch(exception ex){}
     return null;
     
    }       
}