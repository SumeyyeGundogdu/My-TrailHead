public class AccountTriggerHandler {
    public static void CreateAccounts(List<Account> acctList) {
        for(Account acc: acctList){
            if (acc.shippingState != acc.BillingState) {
                acc.ShippingState = acc.BillingState;
            }
        }
    }
}
