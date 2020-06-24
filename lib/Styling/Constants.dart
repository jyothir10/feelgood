import 'package:flutter/material.dart';

const kCardColor = Color(0xFFACB6B9);
const kBorderColor = Colors.grey;
const kSearchBarDecoration = InputDecoration(
  filled: true,
  suffixIcon: Icon(
    Icons.search,
    color: Colors.brown,
    size: 26,
  ),
  focusColor: Colors.black54,
  hoverColor: Colors.white,
  fillColor: Colors.white,
  contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(28.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black54, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
