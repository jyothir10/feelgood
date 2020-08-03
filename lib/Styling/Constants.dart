import 'package:flutter/material.dart';

const kCardColor = Color(0xFFACB6B9);
const kScreenColor = Color(0xFF08767D);
const kBorderColor = Colors.grey;
const kSearchBarDecoration = InputDecoration(
  filled: true,
  suffixIcon: Icon(
    Icons.search,
    color: Colors.brown,
    size: 26,
  ),
  hoverColor: Colors.white,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28.0)),
    borderSide: BorderSide(color: Colors.white),
  ),
);
const kBoxDecoration = BoxDecoration(
  gradient: LinearGradient(
    begin: FractionalOffset.bottomCenter,
    end: FractionalOffset.topCenter,
    colors: [
      Colors.grey,
      Color(0xFFD3D3D3),
      Colors.grey,
      Colors.black26,
    ],
    stops: [0.0, 0.95, 0.97, 1.0],
  ),
);

const kRestaurantTextStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.w500, fontFamily: "Open Sans-Bold");
