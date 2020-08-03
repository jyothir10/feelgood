import 'package:flutter/material.dart';
import 'package:feelsgood/Styling/Constants.dart';

class RestaurantTitles extends StatelessWidget {
  final String title;

  RestaurantTitles({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
          child: Text(
            title,
            style: kRestaurantTextStyle,
          ),
        ),
      ],
    );
  }
}
