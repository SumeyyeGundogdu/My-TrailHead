public with sharing class PropertyUtility {
    public static void newListedProperties() {
        List<Property__c> newPropList = [select Name,Broker__r.Email__c, Days_On_Market__c From Property__c Where Days_On_Market__c <=30];
        for (Property__c p : newPropList) {
           string propEmail = p.Name+ ':'+p.Broker__r.Email__c;
           system.debug(propEmail);
        }
    }
}
