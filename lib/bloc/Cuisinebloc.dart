import 'dart:async';
import 'package:feelsgood/Models/Type.dart';
import 'package:feelsgood/Repository/Cuisine.dart';

class CuisineBloc {
  final _cuisineListStreamContoller = StreamController<List<Type>>();

  Stream<List<Type>> get cuisineListStream =>
      _cuisineListStreamContoller.stream;
  StreamSink<List<Type>> get cuisineListSink =>
      _cuisineListStreamContoller.sink;

  CuisineBloc() {
    _cuisineListStreamContoller.add(cuisinesList);
  }

  void dispose() {
    _cuisineListStreamContoller.close();
  }
}
