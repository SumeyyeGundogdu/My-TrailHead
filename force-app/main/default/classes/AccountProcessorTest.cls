@isTest
private class AccountProcessorTest {
    @isTest
    private static void testCountContacts() {
        Account newAccount = new Account(Name = 'Test Account');
        insert newAccount;

        Contact newContact1 =new Contact(FirstName = 'John', LastNAme = 'Doe', AccountId = newAccount.Id);
        insert newContact1;

        Contact newContact2 =new Contact(FirstName = 'JAne', LastNAme = 'Doe', AccountId = newAccount.Id);
        insert newContact2;

        List<id> AccountIds = new List<id>();
        AccountIds.add(newAccount.Id);
        Test.startTest();
        AccountProcessor.countContacts(accountIds);
        Test.stopTest();
    }
}
