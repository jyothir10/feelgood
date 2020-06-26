import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:feelsgood/Components/OfferSwiper.dart';
import 'package:feelsgood/Repository/OfferSwipers.dart';
import 'package:feelsgood/Components/TopMarketCard.dart';
import 'package:feelsgood/bloc/TopMarketbloc.dart';
import 'package:feelsgood/Models/TopMarket.dart';
import 'package:feelsgood/Styling/ClippingClass.dart';

class HomeScreen extends StatefulWidget {
  static const String id = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TopMarketBloc _topMarketBloc = TopMarketBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    height: 400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Color(0xFF27A504),
                          Color(0xFF54CE3E),
                          Colors.white,
                        ],
                        stops: [0.0, 0.22, 1],
                      ),
                    ),
                  ),
                ),
                Container(
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
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 5),
                        child: Container(
                          height: 38,
                          child: TextField(
                            enableSuggestions: true,
                            decoration: kSearchBarDecoration.copyWith(
                                hintText: "Search Restaurants or Cuisines",
                                hintStyle: TextStyle(
                                    color: Colors.black38, fontSize: 15)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 6, left: 6, top: 27),
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
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 143,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter,
                    colors: [
                      Colors.grey,
                      Color(0xFFD3D3D3),
                      Colors.grey,
                      Colors.black26,
                    ],
                    stops: [0.0, 0.95, 0.97, 1.0],
                  ),
                ),
                child: StreamBuilder<List<TopMarket>>(
                    stream: _topMarketBloc.topMarketListStream,
                    builder: (BuildContext context,
                        AsyncSnapshot<List<TopMarket>> snapshot) {
                      if (snapshot.hasError) {
                        print(snapshot.error);
                      }
                      return snapshot.hasData
                          ? ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return TopMarketCard(
                                  topMarket: snapshot.data[index],
                                );
                              })
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
