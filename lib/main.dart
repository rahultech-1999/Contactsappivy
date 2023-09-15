
import 'package:contect_app/home_page.dart';
import 'package:contect_app/pages/contact_list.dart';
import 'package:contect_app/pages/login_page.dart';
import 'package:contect_app/providers/contact_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      
      home: const ContactListPage(),
      //home:  LoginPage(),
    );
  }
}