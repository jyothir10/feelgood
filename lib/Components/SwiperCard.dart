import 'package:flutter/material.dart';
import 'package:feelsgood/bloc/Cuisinebloc.dart';
import 'package:feelsgood/Models/Cuisine.dart';
import 'package:feelsgood/Components/CuisineCard.dart';

class SwiperCard extends StatelessWidget {
  CuisineBloc _cuisineBloc = CuisineBloc();

  int index;
  Color color;
  String text;

  SwiperCard({this.index});

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      color = Color(0xFF96CA6D);
      text = "BreakFast";
    } else if (index == 1) {
      color = Color(0xFF87ceeb);
      text = "Lunch";
    } else if (index == 2) {
      color = Color(0xFFFFD782);
      text = "Dinner";
    }

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SingleChildScrollView(
              child: Container(
                height: 500,
                width: 380,
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
            ),
          ),
        ],
      ),
    );
  }
}
