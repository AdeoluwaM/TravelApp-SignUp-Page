import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  SignInButton(this.buttonName, this.buttonColor, this.textColor);

  final String? buttonName;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: buttonColor,
        ),
        child: Text(
          '$buttonName',
          style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}