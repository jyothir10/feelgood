import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FruitsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 155,
          width: 140,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Color(0xFFACB6B9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 140,
                  width: 125,
                  decoration: BoxDecoration(
                    color: Color(0xFFECECEC),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 4, right: 4),
                            child: CircleAvatar(
                              radius: 14,
                              backgroundColor: Colors.white,
                              child: Icon(
                                FontAwesomeIcons.heart,
                                color: Colors.black,
                                size: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image(
                        height: 90,
                        image: AssetImage("images/avocado.png"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            "Avocado",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: "Open Sans",
              fontSize: 19,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            "\$1",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: "Open Sans",
              fontSize: 19,
            ),
          ),
        ),
      ],
    );
  }
}
