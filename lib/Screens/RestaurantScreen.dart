import 'package:flutter/material.dart';
import 'package:feelsgood/Styling/ClippingClass.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:feelsgood/Components/RestaurantTopCard.dart';

class RestaurantScreen extends StatefulWidget {
  static const String id = '/restaurant';
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                clipper: ClippingClass(),
                child: Container(
                  height: 410,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Color(0xFF9D0707),
                        Color(0xFFE91212),
                        Color(0xFFFD8E8E),
                        Color(0xFFFFD3D3),
                      ],
                      stops: [0.0, 0.22, 0.50, 1],
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          "images/logo.png",
                          height: 130,
                          width: 210,
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12, right: 12),
                          child: Icon(
                            FontAwesomeIcons.bell,
                            color: Colors.white,
                          ),
                        ),
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: RestaurantTopCard(
                            text: "Kannur",
                            icon: FontAwesomeIcons.mapMarkerAlt,
                          ),
                        ),
                        RestaurantTopCard(
                            text: "Tomorrow-9 am",
                            icon: FontAwesomeIcons.clock),
                        RestaurantTopCard(
                            text: "Table for 3", icon: FontAwesomeIcons.user)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 5),
                          child: Container(
                            height: 38,
                            width: MediaQuery.of(context).size.width - 40,
                            child: TextField(
                              enableSuggestions: true,
                              decoration: kSearchBarDecoration.copyWith(
                                  hintText: "Search Restaurants or Cuisines",
                                  hintStyle: TextStyle(
                                      color: Colors.black38, fontSize: 15)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
