trigger duplicateRecord on Lead (before insert) {

//do this afterwards as the standard one in already running
List<Lead> myLeads = new List<Lead>();

myLeads=[select id from Lead where Email =:trigger.new[0].Email];

System.debug(myLeads);

System.debug('comment: list size is'+myLeads.size());


if(myLeads.size()>0)
{
trigger.new[0].Adderror('Duplicate record detected');


}


}