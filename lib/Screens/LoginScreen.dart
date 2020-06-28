import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/TextBox.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:feelsgood/Screens/SignUpScreen.dart';

class LoginScreen extends StatefulWidget {
  static const String id = '/login';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  bool status = false;
  AnimationController controller;
  double value = 0;

  @override
  void initState() {
    super.initState();
  }

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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Anything, Anytime",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              fontFamily: 'Open Sans'),
                        ),
                        Text(
                          "Right Away!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              fontFamily: 'Open Sans'),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Hero(
                        tag: "email",
                        child: FlatButton(
                          child: TextBox(hintText: "Email"),
                        ),
                      ),
                      Hero(
                        tag: "password",
                        child: FlatButton(
                          child: TextBox(hintText: "Password"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
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
                                  child: Text(
                                    "Remember?",
                                    style: GoogleFonts.lato(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Open Sans'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 5, right: 32, top: 3),
                            child: Text(
                              "Forgot Password?",
                              style: GoogleFonts.lato(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Open Sans'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 29),
                        child: SizedBox(
                          height: 35,
                          width: 140,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            color: Color(0xFFD19139),
                            onPressed: () {
                              controller = AnimationController(
                                duration: Duration(seconds: 3),
                                vsync: this,
                              );
                              controller.forward();
                              controller.addListener(
                                () {
                                  setState(() {
                                    value = controller.value;
                                  });
                                },
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 0),
                              child: Text(
                                "PROCEED",
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
                      child: Image.asset(
                        "images/grass.png",
                        height: 210,
                        width: 270,
                      ),
                    ),
                    Positioned(
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: value * 500,
                          ),
                          Image.asset(
                            "images/scooter1.png",
                            height: 170,
                            width: 100,
                          ),
                        ],
                      ),
                      top: 70,
                      left: 0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Open Sans'),
                        ),
                        FlatButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(context, SignUpScreen.id);
                            });
                          },
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xFF24C8F0),
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
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
