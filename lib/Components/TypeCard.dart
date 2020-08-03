import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/Type.dart';

class TypeCard extends StatelessWidget {
  Type type;
  TypeCard({@required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 85,
      color: Color(0xFFFFD3D3),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 35,
            child: ClipOval(
              child: CachedNetworkImage(
                height: 70,
                fit: BoxFit.cover,
                imageUrl: type.image,
              ),
            ),
          ),
          Text(
            type.name,
            style: TextStyle(
                fontFamily: "Open Sans-Bold", fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
