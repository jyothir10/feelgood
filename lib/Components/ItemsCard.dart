import 'package:flutter/material.dart';
import 'package:feelsgood/bloc/Item.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ItemsCard extends StatelessWidget {
  Item item;

  ItemsCard({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      height: 103,
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
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 5),
              child: CachedNetworkImage(
                imageUrl: item.image,
                height: 60,
                width: 60,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        item.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text(
                        "\$${item.price}",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 28,
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
    );
  }
}
