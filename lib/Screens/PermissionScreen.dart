import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'dart:async';

Timer timer;

void _showDialog(BuildContext context) {
  timer = Timer(Duration(milliseconds: 2000), () {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: Image.asset(
              "images/place.png",
              height: 50,
              width: 50,
            ),
            content: Container(
              height: 60,
              width: 300,
              child: Column(
                children: <Widget>[
                  Text(
                    "FEELGOOD is Requesting to ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Open Sans-Bold",
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                  Text(
                    "Access Your Current Location ",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Open Sans-Bold",
                        fontWeight: FontWeight.w500,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            contentPadding: EdgeInsets.all(10),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 22),
                    child: Container(
                      width: 100,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Text(
                            "ALLOW",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Open Sans-Bold",
                                fontWeight: FontWeight.w500,
                                fontSize: 17),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5, left: 22),
                    child: Container(
                      width: 100,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                              color: Colors.black,
                              width: 1,
                              style: BorderStyle.solid),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 7),
                          child: Text(
                            "CANCEL",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Open Sans-Bold",
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        });
  });
}

class PermissionScreen extends StatefulWidget {
  static const String id = '/permission';

  @override
  _PermissionScreenState createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  @override
  void initState() {
    super.initState();
    Timer.run(() => _showDialog(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: kScreenColor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset(
                "images/grass.png",
                height: 250,
                width: 290,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
