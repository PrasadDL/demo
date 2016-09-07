<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notification_New_Specialty</fullName>
        <description>Notification: New speciality record has been created</description>
        <protected>false</protected>
        <recipients>
            <recipient>userhospital@gmail.com.dcreator</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/NewSpecialityRecord</template>
    </alerts>
    <rules>
        <fullName>NewSpeciality</fullName>
        <actions>
            <name>Notification_New_Specialty</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <description>Workflow when new specialty gets created.</description>
        <formula>true</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>
