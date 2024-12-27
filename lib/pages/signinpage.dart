import 'package:flutter/material.dart';
import 'package:travel_app/pages/homepage.dart';
import 'package:travel_app/widgets/textfieldwidget.dart';
import 'package:travel_app/widgets/smallbutton.dart';

class Signinpage extends StatefulWidget {
  static const String id = 'signinpage';

  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
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
              'Sign In',
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFieldWidget(
                    hintext: 'Username',
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
                        SignInButton('Sign In', Color(0xFF5B9D64), Colors.white),
                      ],
                    ),
                  ),
                  TextButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF2F787F),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            'Continue With Email',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    onPressed: (){
                      //   Continue to Email
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Divider(
                        thickness: 20.0,
                        color: Colors.black,
                      ),
                      Text('or', style: TextStyle(fontSize: 20.0),),
                      Divider(
                        thickness: 20.0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                  TextButton(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xFF004DE3),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Text(
                            'Continue With Google',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    onPressed: (){
                      //   Continue to Google
                    },
                  ),
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
