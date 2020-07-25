import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/Item.dart';

class DrinksCard extends StatelessWidget {
  final Item drink;

  DrinksCard({this.drink});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 10,
      child: Card(
        color: Color(0xFFCFA7A7),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CachedNetworkImage(
                      imageUrl: drink.image,
                      height: 70,
                      width: 55,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text(
                            drink.name,
                            style: TextStyle(
                                fontFamily: "Open Sans-Bold",
                                fontWeight: FontWeight.bold,
                                fontSize: 19),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5),
                          child: Text(
                            "\$${drink.price}",
                            style: TextStyle(
                                fontFamily: "Open Sans-Bold", fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
