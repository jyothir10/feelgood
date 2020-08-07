import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Models/Category.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoriesCard extends StatelessWidget {
  final Category category;
  final Function onPress;

  CategoriesCard({
    this.category,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: onPress,
              child: Card(
                color: Color(category.color),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    height: 40,
                    width: 40,
                    image: AssetImage(category.image),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                category.category,
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
