import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Models/Trending.dart';

class TrendingCard extends StatelessWidget {
  final Trending trending;

  TrendingCard({this.trending});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      width: 145,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black54),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                gradient: LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Colors.grey,
                    Color(0xFFCFCCCC),
                    Color(0xFFD3D3D3),
                    Color(0xFFDADADA),
                    Color(0xFFECECEC),
                    Color(0xFFF6F6F6),
                    Colors.white
                  ],
                  stops: [0.0, 0.03, 0.04, .05, 0.10, 0.20, .55],
                ),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(2.0, 2.0))
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.white,
                            child: Text(
                              "\$${trending.price}",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.deepPurpleAccent,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(2.0, 2.0))
                            ],
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Icon(
                                FontAwesomeIcons.cartPlus,
                                color: Colors.black,
                                size: 18,
                              )),
                        )
                      ],
                    ),
                  ),
                  CachedNetworkImage(
                    imageUrl: trending.image,
                    height: 60,
                    width: 60,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                width: 145,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      trending.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
