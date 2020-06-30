import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/TextBox.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:feelsgood/Screens/LoginScreen.dart';

class SignUpScreen extends StatefulWidget {
  static const String id = '/signup';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: kScreenColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(
              child: Image.asset(
                "images/logo.png",
                height: 130,
                width: 240,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 21),
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      TextBox(
                        hintText: "First Name",
                      ),
                      TextBox(hintText: "Last Name"),
                      Hero(
                        tag: "email",
                        child: FlatButton(
                          child: TextBox(hintText: "Email"),
                        ),
                      ),
                      Hero(
                        tag: "password",
                        child: FlatButton(
                          child: FlatButton(
                            child: TextBox(hintText: "Password"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32, top: 3),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Hero(
                              tag: "switch",
                              child: FlutterSwitch(
                                toggleColor: Colors.grey,
                                inactiveColor: Colors.black,
                                activeColor: Colors.white70,
                                width: 58.0,
                                height: 25.0,
                                valueFontSize: 12.0,
                                toggleSize: 18.0,
                                value: status,
                                onToggle: (val) {
                                  setState(() {
                                    status = val;
                                  });
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text("Remember?",
                                  style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Open Sans'),
                                  )),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 3, left: 36),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "By signing up you Agree to our Terms and Conditions",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                fontFamily: 'Open Sans',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 64,
                      child: Hero(
                        tag: "grass",
                        child: Image.asset(
                          "images/grass.png",
                          height: 210,
                          width: 270,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Hero(
                        tag: "scooter",
                        child: Image.asset(
                          "images/scooter1.png",
                          height: 170,
                          width: 100,
                        ),
                      ),
                      top: 70,
                      left: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                            height: 30,
                            width: 160,
                            child: Hero(
                              tag: "button",
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                color: Color(0xFFD19139),
                                onPressed: () {
                                  setState(() {
                                    Navigator.pushNamed(
                                        context, LoginScreen.id);
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 0),
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                  fit: StackFit.loose,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
