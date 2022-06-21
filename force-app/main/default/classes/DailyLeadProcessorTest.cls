@isTest
public class DailyLeadProcessorTest {
    public static string CRON_EXP = '0 0 0 ? * * *';
    @isTest
    private static void testSchedulableClass(){
        List<Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 500; i++) {
            if (i<250) {
                leads.add(new Lead (LastName = 'Connock', Company = 'Salesforce'));
            }else{
                leads.add(new Lead (LastName = 'Connock', Company = 'Salesforce', LeadSource = 'Other'));
            }            
        }
        insert leads;

        Test.startTest();
        string jobId = system.schedule('Process Leads',CRON_EXP, new DailyLeadProcessor());
        Test.stopTest();

        List<Lead> updatedLeads = [select id, LeadSource From Lead Where LeadSource = 'Dreamforce'];
        system.assertEquals(200, updatedLeads.size(),'ERROR: At least 1 record not updated correctly');

        List<CronTrigger> cts =[select id, TimesTriggered, NextFireTime From CronTrigger Where id=: jobId];
        System.debug('Next Fire Time '+ cts[0].NextFireTime);
    }
}
