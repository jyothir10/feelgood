import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/Popular.dart';

class PopularCard extends StatelessWidget {
  Popular popular;
  PopularCard({
    this.popular,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 206,
      width: 175,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 90,
            child: Container(
              height: 106,
              width: 175,
              child: Card(
                color: Color(0xFFFFD3D3),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/heart.png",
                            height: 15,
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: Text(
                              popular.likes,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 14,
                                  fontFamily: "Open Sans-Bold"),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            popular.name,
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFFFD8E8E),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "₹${popular.price}",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "at ${popular.resname}",
                            style: TextStyle(
                                fontFamily: "Open Sans",
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            child: CircleAvatar(
              radius: 57,
              child: ClipOval(
                child: CachedNetworkImage(
                  height: 114,
                  fit: BoxFit.fill,
                  imageUrl: popular.image,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
