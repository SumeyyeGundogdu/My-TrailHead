public class AddPrimaryContact implements Queueable {
    private Contact con;
    private String state;

    public AddPrimaryContact(Contact con, String state){
        this.con = con;
        this.state = state;
    }

    public void execute(QueueableContext context){
        List<Account> accounts = [SELECT id, Name, (SELECT FirstName,LastName, id FROM contacts) FROM Account WHERE BillingState =: state LIMIT 200];
        List<Contact> primaryContacts = new List<Contact>();

        for (Account acc : accounts) {
            contact c = con.clone();
            c.AccountId = acc.id;
            primaryContacts.add(c);            
        }
        if(primaryContacts.size()>0){
            insert primaryContacts;
        }
    }
}
