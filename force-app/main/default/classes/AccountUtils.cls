public class AccountUtils {
    public static List<Account>  accountsByState(String state) {
        List<Account> accList = [SELECT id, Name FROM Account Where BillingState =: state];
        return accList;
    }
}
