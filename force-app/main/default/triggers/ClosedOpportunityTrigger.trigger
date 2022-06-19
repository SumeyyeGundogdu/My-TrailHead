trigger ClosedOpportunityTrigger on Opportunity (before insert,after update) {
    List<Task> taskList = new List<Task>();
        
    for (Opportunity opp : Trigger.new) {
        if (opp.StageName == 'Closed Won') {
            taskList.add(new Task(Subject = 'Follow Up Test Task', WhatId = opp.Id));
        }
        System.debug('for calisiyor');
    }
    if (taskList.size()>0) {
        insert taskList;
        System.debug('task ok');
    }
}