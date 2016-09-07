trigger AddressTrigger on Account (after insert , before update) {


if(system.isFuture()) return ;

AddressVerifyClass.Check(trigger.new[0].id); 


}