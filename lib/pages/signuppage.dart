import 'package:flutter/material.dart';
import 'package:travel_app/pages/homepage.dart';
import 'package:travel_app/widgets/textfieldwidget.dart';
import 'package:travel_app/widgets/smallbutton.dart';
import 'signinpage.dart';

class Signuppage extends StatefulWidget {
  static const String id = 'signuppage';

  @override
  State<Signuppage> createState() => _SignuppageState();
}

class _SignuppageState extends State<Signuppage> {
  String? newText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4F909E),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 40.0),
            child: TextButton(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 35.0,
              ),
              onPressed: () {
                Navigator.pushNamed(context, Homepage.id);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 35.0, right: 35.0),
            child: Text(
              'Ready to wander? Sign in to start your Adventure',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, bottom: 25.0, top: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  backgroundBlendMode: BlendMode.softLight,
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFieldWidget(
                    hintext: 'First Name',
                    obscuretext: false,
                  ),
                  TextFieldWidget(
                    hintext: 'Last Name',
                    obscuretext: true,
                  ),
                  TextFieldWidget(
                    hintext: 'Email',
                    obscuretext: false,
                  ),
                  TextFieldWidget(
                    hintext: 'Password',
                    obscuretext: true,
                  ),
                  TextButton(
                    onPressed: () {
                      //   Sign In Users
                    },
                    child: Column(
                      children: [
                        SignInButton(
                            'Sign Up', Color(0xFF5B9D64), Colors.white),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an Account?'),
                      TextButton(
                        child: Text('Log In'),
                        onPressed: (){
                          Navigator.pushNamed(context, Signinpage.id);
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
