import 'package:flutter/material.dart';

class ChangeCard extends StatelessWidget {
  final Color color;
  final Function onPressed;
  final String text;
  final String image;

  ChangeCard({this.text, this.image, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152,
      child: RaisedButton(
        onPressed: onPressed,
        elevation: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              text,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Image.asset(
              image,
              height: 20,
              width: 20,
            ),
          ],
        ),
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      ),
    );
  }
}
