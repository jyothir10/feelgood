import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:feelsgood/Components/FruitsCard.dart';
import 'package:feelsgood/Styling/ClippingClass.dart';
import 'package:feelsgood/Models/Fruits.dart';
import 'package:feelsgood/bloc/Fruitbloc.dart';

class FruitScreen extends StatefulWidget {
  static const String id = '/Fruits';
  @override
  _FruitScreenState createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> {
  FruitBloc _fruitBloc = FruitBloc();

  @override
  void dispose() {
    super.dispose();
    _fruitBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF16540D),
            leading: Icon(Icons.arrow_back_ios),
          ),
          body: Stack(
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
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Container(
                        color: Color(0xFFD2F8D2),
                        width: MediaQuery.of(context).size.width,
                        child: TabBar(
                          isScrollable: true,
                          indicatorColor: Color(0xFFD2F8D2),
                          labelColor: Colors.black,
                          labelStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Open Sans"),
                          unselectedLabelColor: Colors.black54,
                          unselectedLabelStyle: TextStyle(fontSize: 17),
                          tabs: <Widget>[
                            Tab(
                              text: "Fruits",
                            ),
                            Tab(
                              text: "Vegetables",
                            ),
                            Tab(
                              text: "Dairy Products",
                            ),
                            Tab(
                              text: "Meets",
                            ),
                          ],
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height - 168,
                        child: TabBarView(
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height,
                              child: StreamBuilder<List<Fruit>>(
                                  stream: _fruitBloc.fruitsListStream,
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List<Fruit>> snapshot) {
                                    if (snapshot.hasError) {
                                      print(snapshot.error);
                                    }
                                    return snapshot.hasData
                                        ? GridView.builder(
                                            itemCount: snapshot.data.length,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    mainAxisSpacing: 23),
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return FruitsCard(
                                                fruit: snapshot.data[index],
                                                isPressed: () {
                                                  setState(() {
                                                    if (snapshot.data[index]
                                                            .isPressed ==
                                                        false) {
                                                      snapshot.data[index]
                                                          .isPressed = true;
                                                    } else {
                                                      snapshot.data[index]
                                                          .isPressed = false;
                                                    }
                                                  });
                                                },
                                              );
                                            })
                                        : Center(
                                            child: CircularProgressIndicator(),
                                          );
                                  }),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
