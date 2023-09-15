import 'package:contect_app/home_page.dart';
import 'package:contect_app/providers/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContactListPage extends ConsumerStatefulWidget {
  const ContactListPage({super.key});

  @override
  ConsumerState<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends ConsumerState<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    final contacts = ref.watch(contactListProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) => HomePage()),
            );
          }, icon: Icon(Icons.add),),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (ctx, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
                foregroundColor: Colors.white,
                child: Text(
                  contacts[index].name[0],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contacts[index].name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(contacts[index].number),
                ],
              ),
              trailing: SizedBox(
                width: 70,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          //
                        },
                        child: const Icon(Icons.edit)),
                    InkWell(
                        onTap: (() {
                          //

                          //
                        }),
                        child: const Icon(Icons.delete)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
