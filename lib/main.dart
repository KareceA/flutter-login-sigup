import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';
import 'welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyRegistration',
      home: MyLogin(),
      // home: MyWelcome(),
      // home: MySignUp(),
    );
  }
}
