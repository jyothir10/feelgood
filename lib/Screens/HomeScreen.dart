import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:feelsgood/Components/OfferSwiper.dart';
import 'package:feelsgood/Repository/OfferSwipers.dart';

class HomeScreen extends StatefulWidget {
  static const String id = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.green,
              height: 400,
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        "images/logo.png",
                        height: 130,
                        width: 200,
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12, right: 12),
                        child: Icon(
                          FontAwesomeIcons.bell,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.end,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 85,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_on,
                                  color: Colors.brown,
                                ),
                                Text("Kannur")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Container(
                      height: 38,
                      child: TextField(
                        enableSuggestions: true,
                        decoration: kSearchBarDecoration.copyWith(
                            hintText: "Search Restaurants or Cuisines",
                            hintStyle:
                                TextStyle(color: Colors.black38, fontSize: 15)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 6, left: 6, top: 27),
                    child: SizedBox(
                        height: 160.0,
                        width: MediaQuery.of(context).size.width,
                        child: Carousel(
                          showIndicator: false,
                          radius: Radius.circular(20),
                          borderRadius: true,
                          images: offerSwiperList,
                        )),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "Top Markets",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              height: 143,
              color: Colors.grey,
              child: TopMarketCard(),
            ),
          ],
        ),
      ),
    );
  }
}

class TopMarketCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 15),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl:
                      "https://cdn.aarp.net/content/dam/aarp/food/diet_nutrition/2018/11/1140-supermarket-cart.imgcache.rev80da2c3d04b94db584d7a1c60da824d3.jpg",
                  height: 80,
                  width: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "PANDA Supermarket",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                    ),
                    Text(
                      "Old Bus stand",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 1),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star_border,
                            color: Colors.black54,
                            size: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 1),
                            child: Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29),
                child: Icon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.lightGreenAccent,
                  size: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
