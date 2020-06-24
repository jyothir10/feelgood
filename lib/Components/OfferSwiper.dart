import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class OfferSwiper extends StatelessWidget {
  final String img;
  OfferSwiper({@required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: img,
        ),
      ),
    );
  }
}
