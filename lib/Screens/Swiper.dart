import 'package:flutter/material.dart';
import 'package:feelsgood/bloc/Cuisinebloc.dart';
import 'package:feelsgood/Models/Cuisine.dart';
import 'package:feelsgood/Components/CuisineCard.dart';

class SwiperScreen extends StatefulWidget {
  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

class _SwiperScreenState extends State<SwiperScreen> {
  CuisineBloc _cuisineBloc = CuisineBloc();
  @override
  void dispose() {
    super.dispose();
    _cuisineBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: StreamBuilder<List<Cuisine>>(
        stream: _cuisineBloc.cuisineListStream,
        builder: (BuildContext context, AsyncSnapshot<List<Cuisine>> snapshot) {
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
    );
  }
}
