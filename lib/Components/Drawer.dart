import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Screens/HomeScreen.dart';
import 'package:feelsgood/Screens/RestaurantScreen.dart';
import 'package:feelsgood/Components/ChangeCard.dart';

class DrawerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 60,
              color: Color(0xFF1a5653),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    "images/logo.png",
                    height: 150,
                    width: 230,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
            ),
            Container(
              height: 190,
              color: Color(0xFF08767D),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              "LOGOUT",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 27,
                              child: Image.asset("images/person.png"),
                              backgroundColor: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "James Ive",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  Text(
                                    "+91 9633* *****",
                                    style: TextStyle(
                                        color: Colors.white.withOpacity(0.7)),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Delivering To",
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 3),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Icon(
                                      FontAwesomeIcons.mapMarkerAlt,
                                      color: Colors.white,
                                      size: 27,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "House Name",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Street Name",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Place",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 25,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                            onPressed: () {},
                            color: Colors.white,
                            child: Text(
                              "Change Location",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Color(0xFFACB6B9),
              child: Column(
                children: <Widget>[
                  ChangeCard(
                    text: "SUPERMARKET",
                    image: "images/supermarket.png",
                    color: Colors.green,
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                  ),
                  ChangeCard(
                    text: "RESTAURANT",
                    image: "images/food.png",
                    color: Colors.red,
                    onPressed: () {
                      Navigator.pushNamed(context, RestaurantScreen.id);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
