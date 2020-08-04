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
    );
  }
}
