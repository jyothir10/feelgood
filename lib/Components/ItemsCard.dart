import 'package:flutter/material.dart';

class ItemsCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  ItemsCard({this.image, this.price, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 144,
      child: Card(
        color: Color(0xFFACB6B9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 8, right: 8, left: 8, bottom: 5),
              child: Image(
                image: NetworkImage(image),
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
                        name,
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
                        "\$$price",
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
    );
  }
}
