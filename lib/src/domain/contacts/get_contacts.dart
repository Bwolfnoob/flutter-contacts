import 'package:flutter_contacts/src/data/remote/contacts/contacts_api.dart';
import 'package:flutter_contacts/src/data/remote/contacts/model/contact.dart';
import 'package:flutter_contacts/src/di/injection.dart';

class GetContacts {
  ContactsApi _contactsApi;

  GetContacts() {
    _contactsApi = Injector().contactsApi;
  }

  Future<List<Contact>> fetchContacts() async {
    return _contactsApi.fetchContacts().then((list) {
      return list.contacts;
    });
  }
}
