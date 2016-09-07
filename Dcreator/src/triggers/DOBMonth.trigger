trigger DOBMonth on Employee__c (before insert, before update) {

DoBMonthEmp emp = new DoBMonthEmp(trigger.new[0]);
 
}