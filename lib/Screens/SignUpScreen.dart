import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/TextBox.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = '/signup';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xFF0A718A),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                  "images/logo.png",
                  height: 130,
                  width: 230,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 21),
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                TextBox(
                  hintText: "First Name",
                ),
                TextBox(hintText: "Last Name"),
                TextBox(hintText: "Email"),
                TextBox(hintText: "Password"),
                Row(
                  children: <Widget>[],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

