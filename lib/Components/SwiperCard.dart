import 'package:flutter/material.dart';

class SwiperCard extends StatelessWidget {
  int index;
  Color color;

  SwiperCard({this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      color = Color(0xFF96CA6D);
    } else if (index == 1) {
      color = Color(0xFF87ceeb);
    } else if (index == 2) {
      color = Color(0xFFFFD782);
    }

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        children: <Widget>[
        ],
      ),
    );
  }
}
