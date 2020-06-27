import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

class TextBox extends StatelessWidget {
  String hintText;
  TextBox({@required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        child: TextField(
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(color: Colors.white),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
