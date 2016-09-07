trigger RoundRobinLead on Lead (before insert) {

Map<Id,User> LastAssignMap= new Map<Id,User>();
Map<Integer,Id> UserIdMap= new Map<Integer,Id>();

integer i=1;
//populate the respective maps
for(User U: [select Id,Name,LastAssigned__c from User  where isactive=true and Receive_lead__c=true ORDER BY LastAssigned__c ASC])
{

UserIdMap.put(i,U.Id);
LastAssignMap.put(U.Id,U);
i++;
}


integer j=1;
for(Lead l : Trigger.new)
{
//get the userid in roundRobin fashion using mod
Integer modValue = math.mod(j,UserIdMap.size());
Id userId =UserIdMap.get(modValue);

//assigh the lead owner
l.OwnerId=userId;

//get that particular user
User temp = LastAssignMap.get(userId);
//update the last assigned field
temp.LastAssigned__c=datetime.now();
//put back that user back to map
LastAssignMap.put(userId,temp);
j++;
}

//update the last assigned datetime for all users, since values are all users (so can direcly issue the dml statement)
update LastAssignMap.values();

}

//Old Code
/*
User userdeatils= new User();
userdeatils  = [select Id,Name,LastAssigned__c from User  where isactive=true ORDER BY LastAssigned__c ASC Limit 1];
 for (Lead l : Trigger.new)
 {
 
l.OwnerId=userdeatils.Id;
userdeatils.LastAssigned__c=datetime.now();
update userdeatils;
 
 }
 
    //Update last assignment for Assignment Group in batch


}*/