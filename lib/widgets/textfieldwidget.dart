import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({this.hintext, this.obscuretext,});

  final String? hintext;
  final bool? obscuretext;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintext,
          hintStyle: TextStyle(color: Colors.grey),
        ),
        obscureText: obscuretext!,
        obscuringCharacter: '*',
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}