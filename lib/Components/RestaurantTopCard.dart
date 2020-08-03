import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RestaurantTopCard extends StatelessWidget {
  final String text;
  final IconData icon;

  RestaurantTopCard({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(
                  icon,
                  color: Colors.brown,
                  size: 14,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontFamily: "Open Sans-Bold", fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
