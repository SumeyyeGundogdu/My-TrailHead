public class AccountHandler {
    public static void insertAccount(Integer value){
        List<Account> addAccounts = new List<Account>();

        integer N = 1;
        While(N<=Value){
            Account acc = new Account();
            acc.Name = 'Acme Inc N'+N;
            acc.AccountNumber = 'A000n'+N;
            addAccounts.add(acc);
            system.debug(addAccounts);
            N=N+1;
        }
        insert addAccounts;
    }

    /*public static Account insertNewAccount(String AccountName){
        try {
            Account newacct = new Account(Name = AccountName);
            insert newacct;
            return newacct;
        } catch (DmlException e) {
            System.debug('A DML exception has occurred: ' +
                        e.getMessage());
            return null;            
        }
    }*/
    
}