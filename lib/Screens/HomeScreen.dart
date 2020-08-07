import 'package:cached_network_image/cached_network_image.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:feelsgood/Repository/OfferSwipers.dart';
import 'package:feelsgood/Components/TopMarketCard.dart';
import 'package:feelsgood/bloc/TopMarketbloc.dart';
import 'package:feelsgood/Models/TopMarket.dart';
import 'package:feelsgood/Styling/ClippingClass.dart';
import 'package:feelsgood/Components/NearMarket.dart';
import 'package:feelsgood/bloc/NearMarketbloc.dart';
import 'package:feelsgood/Models/NearMarket.dart';
import 'package:feelsgood/Components/BottomBar.dart';
import 'package:feelsgood/Components/TrendingCard.dart';
import 'package:feelsgood/Models/Trending.dart';
import 'package:feelsgood/bloc/Trendingbloc.dart';
import 'package:feelsgood/Screens/SupermarketScreen.dart';
import 'package:feelsgood/Components/Drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String id = '/home';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TopMarketBloc _topMarketBloc = TopMarketBloc();
  final NearMarketBloc _nearMarketBloc = NearMarketBloc();
  final TrendingBloc _trendingBloc = TrendingBloc();

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      bottomNavigationBar: BottomBar(
        scaffoldkey: scaffoldKey,
      ),
      endDrawer: DrawerCard(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: ClippingClass(),
                  child: Container(
                    height: 410,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Color(0xFF27A504),
                          Color(0xFF54CE3E),
                          Color(0xFFC8F6C8),
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
                            width: 210,
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
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (BuildContext bc) {
                                      return BottomSheet();
                                    },
                                  );
                                },
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
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 5),
                            child: Container(
                              height: 38,
                              width: MediaQuery.of(context).size.width - 40,
                              child: TextField(
                                enableSuggestions: true,
                                decoration: kSearchBarDecoration.copyWith(
                                    hintText: "Search Restaurants or Cuisines",
                                    hintStyle: TextStyle(
                                        color: Colors.black38, fontSize: 15)),
                              ),
                            ),
                          ),
                        ],
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
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 143,
                decoration: kBoxDecoration,
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
                                onPress: () {
                                  Navigator.pushNamed(
                                      context, SupermarketScreen.id);
                                },
                              );
                            })
                        : Center(
                            child: CircularProgressIndicator(),
                          );
                  },
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Nearby Supermarkets",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Container(
              height: 400,
              child: StreamBuilder<List<NearMarket>>(
                stream: _nearMarketBloc.nearMarketListStream,
                builder: (BuildContext context,
                    AsyncSnapshot<List<NearMarket>> snapshot) {
                  if (snapshot.hasError) {
                    print(snapshot.error);
                  }
                  return snapshot.hasData
                      ? ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data.length,
                          itemBuilder: (context, index) {
                            return NearMarketCard(
                              nearMarket: snapshot.data[index],
                              onPress: () {
                                Navigator.pushNamed(
                                    context, SupermarketScreen.id);
                              },
                            );
                          })
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Trending this week",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                decoration: kBoxDecoration,
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: StreamBuilder<List<Trending>>(
                    stream: _trendingBloc.trendingListStream,
                    builder: (BuildContext context,
                        AsyncSnapshot<List<Trending>> snapshot) {
                      if (snapshot.hasError) {
                        print(snapshot.error);
                      }
                      return snapshot.hasData
                          ? ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index) {
                                return TrendingCard(
                                  trending: snapshot.data[index],
                                );
                              })
                          : Center(
                              child: CircularProgressIndicator(),
                            );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFCBCBCB),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 5),
        child: Container(
          height: 38,
          width: MediaQuery.of(context).size.width - 40,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: TextField(
              enableSuggestions: true,
              decoration: kSearchBarDecoration.copyWith(
                  hintText: "Type a Pincode",
                  hintStyle: TextStyle(color: Colors.black38, fontSize: 15)),
            ),
          ),
        ),
      ),
    );
  }
}
