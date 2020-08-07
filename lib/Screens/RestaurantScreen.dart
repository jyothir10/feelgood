import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Styling/ClippingClass.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:feelsgood/Styling/Constants.dart';
import 'package:feelsgood/Components/RestaurantTopCard.dart';
import 'package:feelsgood/Components/TypeCard.dart';
import 'package:feelsgood/bloc/Typebloc.dart';
import 'package:feelsgood/Models/Type.dart';
import 'package:feelsgood/Components/RestaurantTitles.dart';
import 'package:feelsgood/Components/WofferCard.dart';
import 'package:feelsgood/Components/PopularCard.dart';
import 'package:feelsgood/Components/NearResCard.dart';
import 'package:feelsgood/Components/PcuisineCard.dart';
import 'package:feelsgood/bloc/Pcuisinebloc.dart';
import 'package:feelsgood/Components/BottomBar.dart';
import 'package:feelsgood/Models/Woffer.dart';
import 'package:feelsgood/bloc/Wofferbloc.dart';
import 'package:feelsgood/Models/Popular.dart';
import 'package:feelsgood/bloc/PopularBloc.dart';
import 'package:feelsgood/Models/NearRes.dart';
import 'package:feelsgood/bloc/NearResbloc.dart';
import 'package:feelsgood/Screens/BreakfastScreen.dart';
import 'package:feelsgood/Screens/TajScreen.dart';
import 'package:feelsgood/Screens/CuisineScreen.dart';

class RestaurantScreen extends StatefulWidget {
  static const String id = '/restaurant';
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  TypeBloc _typeBloc = TypeBloc();
  PcuisineBloc _pcuisineBloc = PcuisineBloc();
  WofferBloc _wofferBloc = WofferBloc();
  PopularBloc _popularBloc = PopularBloc();
  NearResBloc _nearResBloc = NearResBloc();

  @override
  void dispose() {
    super.dispose();
    _pcuisineBloc.dispose();
    _typeBloc.dispose();
    _wofferBloc.dispose();
    _popularBloc.dispose();
    _nearResBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
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
                          Color(0xFF9D0707),
                          Color(0xFFE91212),
                          Color(0xFFFD8E8E),
                          Color(0xFFFFD3D3),
                        ],
                        stops: [0.0, 0.22, 0.50, 1],
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
                            padding: const EdgeInsets.only(left: 15),
                            child: RestaurantTopCard(
                              text: "Kannur",
                              icon: FontAwesomeIcons.mapMarkerAlt,
                            ),
                          ),
                          RestaurantTopCard(
                              text: "Tomorrow-9 am",
                              icon: FontAwesomeIcons.clock),
                          RestaurantTopCard(
                              text: "Table for 3", icon: FontAwesomeIcons.user)
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
                      RestaurantTitles(title: "What would you like to order?"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 102,
                          decoration: BoxDecoration(
                              boxShadow: [BoxShadow(blurRadius: 5)],
                              color: Color(0xFFFFD3D3)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: StreamBuilder<List<Type>>(
                              stream: _typeBloc.typeListStream,
                              builder: (BuildContext context,
                                  AsyncSnapshot<List<Type>> snapshot) {
                                if (snapshot.hasError) {
                                  print(snapshot.error);
                                }
                                return snapshot.hasData
                                    ? ListView.builder(
                                        shrinkWrap: true,
                                        scrollDirection: Axis.horizontal,
                                        itemCount: snapshot.data.length,
                                        itemBuilder: (context, index) {
                                          return TypeCard(
                                            type: snapshot.data[index],
                                            onPress: () {
                                              Navigator.pushNamed(
                                                  context, BreakfastScreen.id);
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
                      ),
                      RestaurantTitles(title: "Weekly Offers"),
                      Container(
                        height: 165,
                        child: StreamBuilder<List<Woffer>>(
                          stream: _wofferBloc.wofferListStream,
                          builder: (BuildContext context,
                              AsyncSnapshot<List<Woffer>> snapshot) {
                            if (snapshot.hasError) {
                              print(snapshot.error);
                            }
                            return snapshot.hasData
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return WofferCard(
                                        woffer: snapshot.data[index],
                                      );
                                    })
                                : Center(
                                    child: CircularProgressIndicator(),
                                  );
                          },
                        ),
                      ),
                      RestaurantTitles(title: "Popular Taste"),
                      Container(
                        height: 200,
                        child: StreamBuilder<List<Popular>>(
                          stream: _popularBloc.popularListStream,
                          builder: (BuildContext context,
                              AsyncSnapshot<List<Popular>> snapshot) {
                            if (snapshot.hasError) {
                              print(snapshot.error);
                            }
                            return snapshot.hasData
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return PopularCard(
                                        popular: snapshot.data[index],
                                      );
                                    })
                                : Center(
                                    child: CircularProgressIndicator(),
                                  );
                          },
                        ),
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: CachedNetworkImage(
                          fit: BoxFit.fill,
                          imageUrl:
                              "https://dubaisavers.com/wp-content/uploads/2018/11/BURGER-KING.jpg",
                        ),
                      ),
                      RestaurantTitles(
                        title: "Nearby Restaurants",
                      ),
                      Container(
                        height: 145,
                        child: StreamBuilder<List<NearRes>>(
                          stream: _nearResBloc.nearResListStream,
                          builder: (BuildContext context,
                              AsyncSnapshot<List<NearRes>> snapshot) {
                            if (snapshot.hasError) {
                              print(snapshot.error);
                            }
                            return snapshot.hasData
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return NearResCard(
                                        nearRes: snapshot.data[index],
                                        onPress: () {
                                          Navigator.pushNamed(
                                              context, TajScreen.id);
                                        },
                                      );
                                    })
                                : Center(
                                    child: CircularProgressIndicator(),
                                  );
                          },
                        ),
                      ),
                      RestaurantTitles(title: "Popular Cuisines"),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          height: 100,
                          color: Color(0xFFFFD3D3),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 90,
                                width: MediaQuery.of(context).size.width,
                                child: StreamBuilder<List<Type>>(
                                  stream: _pcuisineBloc.pcuisineListStream,
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List<Type>> snapshot) {
                                    if (snapshot.hasError) {
                                      print(snapshot.error);
                                    }
                                    return snapshot.hasData
                                        ? ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: snapshot.data.length,
                                            itemBuilder: (context, index) {
                                              return PcuisineCard(
                                                cuisine: snapshot.data[index],
                                                onPress: () {
                                                  Navigator.pushNamed(context,
                                                      CuisineScreen.id);
                                                },
                                              );
                                            })
                                        : Center(
                                            child: CircularProgressIndicator(),
                                          );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
