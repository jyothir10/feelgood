import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Models/Taj.dart';
import 'package:feelsgood/bloc/Tajbloc.dart';
import 'package:feelsgood/Components/TajCard.dart';
import 'package:feelsgood/Components/BottomBar.dart';
import 'package:feelsgood/Components/NearResCard.dart';

class TajScreen extends StatefulWidget {
  static const String id = '/Taj';
  @override
  _TajScreenState createState() => _TajScreenState();
}

class _TajScreenState extends State<TajScreen> {
  final TajBloc _tajBloc = TajBloc();

  @override
  void dispose() {
    _tajBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomBar(),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 157,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage("images/hotel.jpg"),
                        fit: BoxFit.cover)),
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.grey.withOpacity(0.1),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 21),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.keyboard_arrow_left,
                                  color: Colors.black,
                                  size: 35,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "images/hotel.jpg",
                                    fit: BoxFit.fill,
                                    height: 75,
                                    width: 75,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, bottom: 3),
                                          child: Text(
                                            "Taj Restaurant",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 23,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 23,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 23,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.orange,
                                              size: 23,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                              size: 23,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "INDIAN",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Open Sans"),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              TabBar(
                  indicator: BoxDecoration(
                    color: Color(0xFFFFF2F2),
                    border: Border(
                      bottom: BorderSide(color: Colors.red, width: 5),
                    ),
                  ),
                  labelStyle: TextStyle(fontSize: 16),
                  labelColor: Colors.black,
                  indicatorWeight: 5,
                  indicatorColor: Colors.red,
                  tabs: [
                    Tab(
                      text: "BOOKING",
                    ),
                    Tab(
                      text: "MENU",
                    ),
                    Tab(
                      text: "REVIEWS",
                    ),
                  ]),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFA9A7A7),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Most Selling",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFA9A7A7),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Stay at Home",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    child: Image(image: AssetImage("images/home.png"),),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFA9A7A7),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Our Special",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w800,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    height: 400,
                    color: Color(0XFFFFF2F2),
                    child: StreamBuilder<List<Taj>>(
                      stream: _tajBloc.tajListStream,
                      builder: (BuildContext context,
                          AsyncSnapshot<List<Taj>> snapshot) {
                        if (snapshot.hasError) {
                          print(snapshot.error);
                        }
                        return snapshot.hasData
                            ? ListView.builder(
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: snapshot.data.length,
                                itemBuilder: (context, index) {
                                  return TajCard(
                                    taj: snapshot.data[index],
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
            ],
          ),
        ),
      ),
    );
  }
}
