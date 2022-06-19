
public class AccountProcessor {
    @future
    public static void countContacts(List<Id> accountIds) {
        List<Account> accountsToUpdate = new List<Account>();
        List<Account> accounts = [select id,name,(select id from contacts)from Account where Id in: accountIds];
        for (Account acc : accounts) {
            List<Contact> contactList = acc.contacts;
            acc.Number_Of_Contacts__c = contactList.size();
            accountsToUpdate.add(acc);

        }
        update accountsToUpdate;
    }
}
