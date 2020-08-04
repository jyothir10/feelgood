import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Models/Selling.dart';

class SellingCard extends StatelessWidget {

  Selling selling;
  SellingCard({
    this.selling,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 150,
      child: Card(
        color: Color(0xFFFFF2F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: CachedNetworkImage(
                height: 85,
                width: 150,
                imageUrl:
                selling.image,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2,top: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    selling.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(selling.rate),
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "images/heart.png",
                        color: Colors.grey,
                        height: 14,
                        width: 14,
                      ),
                      Text(
                        selling.likes,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
