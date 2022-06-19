public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(integer numcnt, string lastname) {
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 0; i<numcnt; i++) {
            contact cnt = new Contact(FirstName = 'Test'+i, LastName = lastname);
            contacts.add(cnt);

        }
        return contacts;
    }
}
