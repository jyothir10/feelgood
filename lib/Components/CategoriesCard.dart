import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/bloc/Category.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoriesCard extends StatelessWidget {
  Category category;

  CategoriesCard({
    this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Card(
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
            Text(
              category.category,
              style: TextStyle(fontWeight: FontWeight.w500),
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
