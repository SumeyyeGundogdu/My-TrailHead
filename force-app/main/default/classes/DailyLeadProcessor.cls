global class DailyLeadProcessor implements Schedulable{
    global void execute(SchedulableContext ctx){
        // List<Lead> leadstoupdate = new List<Lead>();
        List<Lead> leads = [select id,LeadSource from Lead Where LeadSource = NULL Limit 200];

        for (Lead l : leads) {
            l.LeadSource = 'Dreamforce';
            // leadstoupdate.add(l);
        }
        update leads;
    }
}
