import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Models/Cuisine.dart';

class CuisineCard extends StatelessWidget {
  Cuisine cuisine;

  CuisineCard({
    this.cuisine,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            elevation: 20,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                              fit: BoxFit.fill,
                              imageUrl: cuisine.image,
                              height: 80,
                              width: 100,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 19),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      cuisine.name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 19),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.star,
                                            color: Colors.red,
                                            size: 25,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 1),
                                            child: Text(
                                              "4.1",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 9),
                                      child: Text(
                                        "JP Street",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.bookmark,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 40,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.solidPaperPlane,
                              size: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 3),
                              child: Text(
                                "${0.8} km",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
