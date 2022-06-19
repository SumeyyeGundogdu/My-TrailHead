
@isTest
public with sharing class TestRestrictContactByName {
    @isTest static void Test_insertupdateContact() {
        Contact cnt = new Contact();
        cnt.LastName = 'INVALIDNAME';

        test.startTest();
        Database.SaveResult result = Database.insert(cnt, false);
        test.stopTest();

        system.assert(!result.isSuccess());
        System.assert(result.getErrors().size()>0);
        system.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML', result.getErrors()[0].getMessage());
    }
}
