import 'package:flutter/material.dart';
import 'package:travel_app/widgets/smallbutton.dart';
import 'package:travel_app/pages/signinpage.dart';
import 'package:travel_app/pages/signuppage.dart';

class BoxContainer extends StatelessWidget {
  BoxContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 15.0, top: 350.0, right: 15.0, bottom: 25.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          backgroundBlendMode: BlendMode.overlay,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontSize: 35.0),
              ),
              Text(
                '"Welcome! Ready to explore the World? Let\'s start your Journey!"',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Signinpage.id);
                    },
                    child: SignInButton(
                        'Sign In', Color(0xFF5B9D64), Colors.white),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Signuppage.id);
                      },
                      child:
                          SignInButton('Sign Up', Colors.white, Colors.black)),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}