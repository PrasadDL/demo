public class allLists {

    public PageReference myShow() {
     
     //change the Any_ObjectName__c with your Custom or Standard Object name.
Schema.DescribeSObjectResult anySObjectSchema = Account.SObjectType.getDescribe();
String objectIdPrefix = anySObjectSchema.getKeyPrefix();
PageReference pageReference = new PageReference('/'+objectIdPrefix+'/o');
pageReference.setRedirect(true);
return pageReference;
     
    }

}