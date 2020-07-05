import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/MarketCartCard.dart';
import 'package:feelsgood/Models/MarketCart.dart';
import 'package:feelsgood/bloc/MarketCartbloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SuperMarketCartScreen extends StatefulWidget {
  static const String id = '/Scart';
  @override
  _SuperMarketCartScreenState createState() => _SuperMarketCartScreenState();
}

class _SuperMarketCartScreenState extends State<SuperMarketCartScreen> {
  final MarketCartBloc _marketCartBloc = MarketCartBloc();

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
                    color: Color(0xFF6AAF6A),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        color: Colors.transparent,
                        height: 120,
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15),
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
                        height: 400,
                        color: Color(0xFFCBFDCB),
                        child: StreamBuilder<List<MarketCart>>(
                          stream: _marketCartBloc.marketCartListStream,
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
                                      return MarketCartCard(
                                        marketCart: snapshot.data[index],
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
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 48),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.white,
                              height: 38,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "Total",
                                      style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                    Text(
                                      "\$10",
                                      style: TextStyle(
                                          fontFamily: 'Open Sans',
                                          fontWeight: FontWeight.w900,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 12, left: 8),
                            child: Row(
                              children: <Widget>[
                                Text(
                                  "Shop More Fill Your Cart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Open Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 4),
                                  child: Image.asset(
                                    "images/shopping-bag.png",
                                    height: 20,
                                    width: 20,
                                    color: Colors.yellow,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 40),
                            child: Container(
                              width: 300,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                                color: Colors.white,
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 0),
                                  child: Text(
                                    "Continue",
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
