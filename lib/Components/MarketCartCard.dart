import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/MarketCart.dart';

class MarketCartCard extends StatelessWidget {
  final int count = 01;
  final Function plus;
  final Function minus;
  final MarketCart marketCart;

  MarketCartCard({this.plus, this.minus, this.marketCart});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        color: Color(0xFFCBFDCB),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: marketCart.image,
//                  "https://www.lgssales.com/wp-content/uploads/2017/07/darling-oranges-1.png",
                  height: 80,
                  width: 100,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  marketCart.name,
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        "\$${marketCart.price}",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Card(
                      elevation: 5,
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: FlatButton(
                              onPressed: minus,
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 17,
                              ),
                            ),
                            height: 23,
                            width: 24,
                            color: Color(0xFFD3D3D3),
                          ),
                          Container(
                            height: 23,
                            width: 30,
                            color: Colors.white,
                            child: Center(child: Text("$count")),
                          ),
                          Container(
                            child: FlatButton(
                              onPressed: plus,
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 17,
                              ),
                            ),
                            height: 23,
                            width: 24,
                            color: Color(0xFFD3D3D3),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.close,
                    size: 35,
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
