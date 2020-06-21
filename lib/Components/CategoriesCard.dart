import 'package:flutter/material.dart';
import 'package:feelsgood/bloc/Category.dart';

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
              color: Color(0xFF58AF4A),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image(
                  height: 40,
                  width: 40,
                  image: AssetImage(
                    category.image,
                  ),
                ),
              ),
            ),
            Text(category.category),
          ],
        ),
        SizedBox(
          width: 18,
        ),
      ],
    );
  }
}
