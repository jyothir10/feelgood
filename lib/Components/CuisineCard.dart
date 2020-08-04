import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/Type.dart';

class CuisineCard extends StatelessWidget {
  Type cuisine;

  CuisineCard({this.cuisine});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFA9A7A7), width: 3),
        color: Color(0xFFCBCBCB),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(34), topRight: Radius.circular(34)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: 28,
            child: ClipOval(
              child: CachedNetworkImage(
                fit: BoxFit.fill,
                height: 56,
                width: 56,
                imageUrl: cuisine.image,
              ),
            ),
          ),
          Text(
            cuisine.name,
            style:
                TextStyle(fontFamily: "Open Sans", fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
