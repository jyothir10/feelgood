import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Styling/Constants.dart';

class OrderScreen extends StatefulWidget {
  static const String id = '/order';
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.white,
          size: 28,
        ),
        backgroundColor: kScreenColor,
        title: Text(
          "My Orders",
          style: TextStyle(color: Colors.white, fontFamily: "Open Sans"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: [
              Colors.black54,
              Colors.grey,
              Color(0xFFC8F6C8),
            ],
            stops: [0.0, 0.22, 1],
          ),
        ),
        height: 150,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 60,
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://media-cdn.tripadvisor.com/media/photo-s/05/2a/0d/f2/taj-mahal.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Taj Restaurant",
                            style: TextStyle(
                                fontFamily: "Open Sans-Bold",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Text(
                            "Delivered",
                            style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.green),
                          ),
                          Text(
                            "11 June 2020  03:23",
                            style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black54),
                          ),
                          Text(
                            "Order ID: **********",
                            style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Container(
                          height: 24,
                          child: FlatButton(
                            onPressed: () {},
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            color: Colors.blueAccent,
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Text(
                                "Re-order",
                                style: TextStyle(
                                    fontFamily: "Open Sans",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 24,
                        child: FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          color: Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Rate Order",
                              style: TextStyle(
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
