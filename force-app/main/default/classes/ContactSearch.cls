public class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, string postalCode) {
        List<Contact> Contacts = [select id, Name FROM Contact where lastName =: lastName and MailingPostalCode =: postalCode];
        return Contacts;
    }
}
