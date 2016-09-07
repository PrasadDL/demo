public class StringArrayTest {

    public static List<String> generateStringArray(Integer n)
    {
        List<String> returnValue = new List<String>();
        if(n>0)
        {
            for(Integer i=0;i<n;i++)
            {
                 returnValue.add('Test '+i);
                
            }
            return returnValue;
        }
            
        else
        return null;
        
    }
}