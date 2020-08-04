import 'package:flutter/material.dart';
import 'package:feelsgood/Models/Cuisine.dart';
import 'package:feelsgood/bloc/Cuisinebloc.dart';
import 'package:feelsgood/Components/CuisineCard.dart';

class CuisineScreen extends StatefulWidget {
  static const String id = '/Cuisine';
  @override
  _CuisineScreenState createState() => _CuisineScreenState();
}

class _CuisineScreenState extends State<CuisineScreen> {
  final CuisineBloc _cuisineBloc = CuisineBloc();

  @override
  void dispose() {
    super.dispose();
    _cuisineBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFE91212),
        elevation: 0,
        title: Text(
          "Browse By Cuisine",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
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
      body: Container(
        height: 700,
        color: Color(0xFFFD8E8E),
        child: StreamBuilder<List<Cuisine>>(
          stream: _cuisineBloc.cuisineListStream,
          builder:
              (BuildContext context, AsyncSnapshot<List<Cuisine>> snapshot) {
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
    );
  }
}
