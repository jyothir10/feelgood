import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/Type.dart';

class PcuisineCard extends StatelessWidget {
  final Type cuisine;
  final Function onPress;

  PcuisineCard({this.cuisine, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: 83,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFA9A7A7), width: 3),
          color: Color(0xFFCBCBCB),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(37), topRight: Radius.circular(37)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            CircleAvatar(
              radius: 32,
              child: ClipOval(
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  height: 64,
                  width: 64,
                  imageUrl: cuisine.image,
                ),
              ),
            ),
            Text(
              cuisine.name,
              style: TextStyle(
                  fontFamily: "Open Sans", fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
