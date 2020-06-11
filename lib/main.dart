import 'package:flutter/material.dart';
import 'package:login1flutter/pages/loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( primarySwatch: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}
