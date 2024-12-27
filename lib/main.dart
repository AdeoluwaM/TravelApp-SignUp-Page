import 'package:flutter/material.dart';
import 'package:travel_app/pages/signinpage.dart';
import 'package:travel_app/pages/homepage.dart';
import 'package:travel_app/pages/signuppage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Signinpage.id: (context) => Signinpage(),
        Signuppage.id: (context) => Signuppage(),
        Homepage.id: (context) => Homepage(),
      },
      home: Homepage(),
    );
  }
}





