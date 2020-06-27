import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Models/TopMarket.dart';

class TopMarketCard extends StatelessWidget {
  final TopMarket topMarket;

  TopMarketCard({this.topMarket});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: topMarket.image,
                    height: 80,
                    width: 100,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        topMarket.name,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                      Text(
                        topMarket.location,
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 1),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star_border,
                              color: Colors.black54,
                              size: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Text(
                                topMarket.rating,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.lightGreenAccent,
                    size: 18,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
