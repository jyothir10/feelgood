import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  final String text;

  Separator({this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Divider(
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                text,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                "MORE",
                style: TextStyle(
                    color: Color(0xFFFF2424),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ],
    );
  }
}
