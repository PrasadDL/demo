trigger EmailTrigger on Lead (after insert , before update) {


if(system.isFuture()) return ;

EmailVerifyClass.Check(trigger.new[0].id); 


}