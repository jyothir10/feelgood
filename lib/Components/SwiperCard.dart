import 'package:flutter/material.dart';
import 'package:feelsgood/Screens/Swiper.dart';

class SwiperCard extends StatelessWidget {
  int index;
  Color color;
  String text;

  SwiperCard({this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      color = Color(0xFF87ceeb);
      text = "BreakFast";
    } else if (index == 1) {
      color = Color(0xFF96CA6D);

      text = "Lunch";
    } else if (index == 2) {
      color = Color(0xFFFFD782);
      text = "Dinner";
    }

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 35),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SingleChildScrollView(
              child: Container(
                height: 500,
                width: 380,
                child: SwiperScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
