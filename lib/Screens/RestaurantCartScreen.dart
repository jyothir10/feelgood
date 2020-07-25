import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/ResCartCard.dart';
import 'package:feelsgood/Models/MarketCart.dart';
import 'package:feelsgood/bloc/ResCartbloc.dart';

class RestaurantCartScreen extends StatefulWidget {
  static const String id = '/Rcart';
  @override
  _RestaurantCartScreenState createState() => _RestaurantCartScreenState();
}

class _RestaurantCartScreenState extends State<RestaurantCartScreen> {
  final ResCartBloc _resCartBloc = ResCartBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
            ),
            Positioned(
              top: 0.0,
              child: SingleChildScrollView(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color(0xFF880807),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Cart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 35),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 305,
                        color: Color(0xFFCFA7A7),
                        child: StreamBuilder<List<MarketCart>>(
                          stream: _resCartBloc.resCartListStream,
                          builder: (BuildContext context,
                              AsyncSnapshot<List<MarketCart>> snapshot) {
                            if (snapshot.hasError) {
                              print(snapshot.error);
                            }
                            return snapshot.hasData
                                ? ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: snapshot.data.length,
                                    itemBuilder: (context, index) {
                                      return ResCartCard(
                                        resCart: snapshot.data[index],
                                        plus: () {
                                          setState(() {
                                            snapshot.data[index].quantity++;
                                          });
                                        },
                                        minus: () {
                                          setState(() {
                                            if (snapshot.data[index].quantity >
                                                0) {
                                              snapshot.data[index].quantity--;
                                            }
                                          });
                                        },
                                      );
                                    })
                                : Center(
                                    child: CircularProgressIndicator(),
                                  );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Card(
                          color: Color(0xFFCFA7A7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://smartshopper.tech/images/products/5/3/5301000172427.jpg",
                                      height: 70,
                                      width: 55,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 4),
                                          child: Text(
                                            "7up",
                                            style: TextStyle(
                                                fontFamily: "Open Sans-Bold",
                                                fontWeight: FontWeight.bold,
                                                fontSize: 19),
                                          ),
                                        ),
                                        Text("\$1.5"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Color(0xFF4A0203),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 27),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          fontFamily: 'Open Sans-ExtraBold',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 27,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      "\$10",
                                      style: TextStyle(
                                          fontFamily: 'Open Sans-Bold',
                                          fontWeight: FontWeight.w900,
                                          fontSize: 27,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 40),
                              child: Container(
                                width: 300,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                  color: Colors.yellow,
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 25, vertical: 0),
                                    child: Text(
                                      "Make Order",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
