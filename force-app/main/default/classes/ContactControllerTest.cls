@isTest
public class ContactControllerTest{
    List<Contact> contacts = ContactController.getContactList();
    List<Contact> conList = ContactController.findContacts('Sample Contact');
    Contact con = ContactController.getSingleContact('Sample Contact');
}