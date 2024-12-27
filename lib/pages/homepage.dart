import 'package:flutter/material.dart';
import 'package:travel_app/widgets/boxcontainer.dart ';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  static const String id = 'homepage';

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/travel2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: BoxContainer(),
        ),
      ),
    );
  }
}
