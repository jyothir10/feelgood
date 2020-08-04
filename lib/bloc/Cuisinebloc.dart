import 'dart:async';
import 'package:feelsgood/Models/Cuisine.dart';
import 'package:feelsgood/Repository/Cuisine.dart';

class CuisineBloc {
  final _cuisineListStreamController = StreamController<List<Cuisine>>();

  Stream<List<Cuisine>> get cuisineListStream =>
      _cuisineListStreamController.stream;
  StreamSink<List<Cuisine>> get cuisineListSink =>
      _cuisineListStreamController.sink;

  CuisineBloc() {
    _cuisineListStreamController.add(cuisineList);
  }

  void dispose() {
    _cuisineListStreamController.close();
  }
}
