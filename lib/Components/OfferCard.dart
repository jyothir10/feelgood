import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Models/Offer.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OfferCard extends StatelessWidget {
  final Offer offer;

  OfferCard({this.offer});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 140,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kBorderColor,
                blurRadius: 1,
              ),
            ],
          ),
          child: Card(
            color: kCardColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8, right: 8, left: 8, bottom: 5),
                      child: CachedNetworkImage(
                        imageUrl: offer.image,
                        height: 60,
                        width: 60,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        offer.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          "\$${offer.oldPrice}/-",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 5),
                        child: Text(
                          "\$${offer.price}/-",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 25,
                    child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 11),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 18,
        ),
      ],
    );
  }
}
