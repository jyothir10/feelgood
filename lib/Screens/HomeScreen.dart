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
          ],
        ),
      ),
    );
  }
}
