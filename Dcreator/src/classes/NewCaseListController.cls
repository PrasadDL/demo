public class NewCaseListController {
    
    private String StatusField='NEW';
    public List<Case> getNewCases()
    {
        List<Case> myCases=Database.query('select Id,CaseNumber from case where status=:StatusField');
        return myCases;
    }

}