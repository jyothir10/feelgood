import 'dart:async';
import 'package:feelsgood/Models/Type.dart';
import 'package:feelsgood/Repository/Pcuisine.dart';

class PuisineBloc {
  final _pcuisineListStreamContoller = StreamController<List<Type>>();

  Stream<List<Type>> get pcuisineListStream =>
      _pcuisineListStreamContoller.stream;
  StreamSink<List<Type>> get pcuisineListSink =>
      _pcuisineListStreamContoller.sink;

  PcuisineBloc() {
    _pcuisineListStreamContoller.add(cuisinesList);
  }

  void dispose() {
    _pcuisineListStreamContoller.close();
  }
}
