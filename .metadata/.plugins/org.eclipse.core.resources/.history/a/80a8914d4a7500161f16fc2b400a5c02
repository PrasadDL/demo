trigger SendConfirmationEmail on Session_Speaker__c (after insert) {

 
    //collect ID's in one list of a single SOQL query
    List<Id> sessionSpeakerIds = new List<Id>();   
    for(Session_Speaker__c newItem : trigger.new) {
        sessionSpeakerIds.add(newItem.Id);
    }
    
    // Retrieve session name and time + speaker name and email address related to ID's
    // 
    // 
    // 
 List<Session_speaker__c> sessionSpeakers= [Select Session__r.Name, Session__r.Session_Date__c,
                                           Speaker__r.First_Name__c,Speaker__r.Last_Name__c,Speaker__r.Email__c
                                           from Session_Speaker__C where Id IN:sessionSpeakerIds];
    
    if(sessionSpeakers.size()>0)
    {
        // Send confirmation email if we know the speaker's email address
            Session_Speaker__c sessionSpeaker = sessionSpeakers[0];
        	if(sessionSpeaker.Speaker__r.Email__c!=NULL)
            {
                String address = sessionSpeaker.Speaker__r.Email__c;
                String subject = 'Speaker Confirmation';
                String message = 'Dear ' + sessionSpeaker.Speaker__r.First_Name__c +
                    ',\nYour session "' + sessionSpeaker.Session__r.Name + '" on ' +
                    sessionSpeaker.Session__r.Session_Date__c + ' is confirmed.\n\n' +
                    'Thanks for speaking at the conference!';
                EmailManager.sendMail(address, subject, message);
            }
    }
}