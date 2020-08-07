import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Models/Taj.dart';

class TajCard extends StatelessWidget {
  final Taj taj;
  final Function onPress;

  TajCard({
    this.taj,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0XFFFFF2F2),
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 35,
                    child: ClipOval(
                        child: CachedNetworkImage(
                      fit: BoxFit.fill,
                      height: 70,
                      width: 70,
                      imageUrl: taj.image,
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Text(
                          taj.name,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          "\$ 1",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/heart.png",
                            height: 18,
                            width: 18,
                          ),
                          Text(
                            " 6432",
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 45,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                    onTap: onPress,
                    child: Card(
                      color: Color(0xFF8A0202),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 5),
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: "Open Sans-Bold"),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
