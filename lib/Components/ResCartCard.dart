import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/MarketCart.dart';

class ResCartCard extends StatelessWidget {
  final Function plus;
  final Function minus;
  final MarketCart resCart;

  ResCartCard({this.resCart, this.minus, this.plus});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFCFA7A7),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 15, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CircleAvatar(
                radius: 36,
                child: ClipOval(
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: resCart.image,
                    height: 70,
                    width: 90,
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      resCart.name,
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontFamily: "Open Sans-Bold"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 3),
                      child: Card(
                        elevation: 7,
                        child: Row(
                          children: <Widget>[
                            GestureDetector(
                              onTap: minus,
                              child: Container(
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.black,
                                  size: 17,
                                ),
                                height: 25,
                                width: 35,
                                color: Color(0xFFF0E7EA),
                              ),
                            ),
                            Container(
                              height: 25,
                              width: 38,
                              color: Colors.white,
                              child: Center(child: Text("${resCart.quantity}")),
                            ),
                            GestureDetector(
                              onTap: plus,
                              child: Container(
                                child: Icon(
                                  Icons.add,
                                  color: Colors.black,
                                  size: 17,
                                ),
                                height: 25,
                                width: 35,
                                color: Color(0xFFF0E7EA),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8, left: 20),
                      child: Text(
                        "\$${resCart.price}",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontFamily: "Open Sans-Bold"),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.close,
                    size: 33,
                    color: Colors.white,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
