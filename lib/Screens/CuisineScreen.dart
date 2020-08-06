import 'package:flutter/material.dart';
import 'package:feelsgood/Models/Cuisine.dart';
import 'package:feelsgood/bloc/Cuisinebloc.dart';
import 'package:feelsgood/Components/CuisineCard.dart';
import 'package:feelsgood/bloc/Pcuisinebloc.dart';
import 'package:feelsgood/Components/BottomBar.dart';
import 'package:feelsgood/Models/Type.dart';
import 'package:feelsgood/Components/PcuisineCard.dart';

class CuisineScreen extends StatefulWidget {
  static const String id = '/Cuisine';
  @override
  _CuisineScreenState createState() => _CuisineScreenState();
}

class _CuisineScreenState extends State<CuisineScreen> {
  final CuisineBloc _cuisineBloc = CuisineBloc();
  final PcuisineBloc _pcuisineBloc = PcuisineBloc();

  @override
  void dispose() {
    super.dispose();
    _cuisineBloc.dispose();
    _pcuisineBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9D0707),
        elevation: 0,
        title: Text(
          "Browse By Cuisine",
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: "Open Sans",
              fontWeight: FontWeight.w900),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Color(0xFF9D0707),
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 85,
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
            Container(
              height: 700,
              color: Color(0xFFEFCDB1),
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: StreamBuilder<List<Cuisine>>(
                  stream: _cuisineBloc.cuisineListStream,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<Cuisine>> snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    return snapshot.hasData
                        ? ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: snapshot.data.length,
                            itemBuilder: (context, index) {
                              return CuisineCard(
                                cuisine: snapshot.data[index],
                              );
                            })
                        : Center(
                            child: CircularProgressIndicator(),
                          );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
