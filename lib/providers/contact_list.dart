import 'package:contect_app/model/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactList extends StateNotifier<List<ContactModel>> {
  ContactList() : super([]);

  void addContact(ContactModel model) {
    List<ContactModel> list = state;
    list.add(model);
    state = list;
    debugPrint(state.length.toString());
  }
}

StateNotifierProvider<ContactList, List<ContactModel>> contactListProvider =
    StateNotifierProvider<ContactList, List<ContactModel>>(
  (ref) => ContactList(),
);
