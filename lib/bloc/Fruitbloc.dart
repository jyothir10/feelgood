import 'dart:async';
import 'package:feelsgood/Models/Fruits.dart';
import 'package:feelsgood/Repository/Fruits.dart';

class FruitBloc {
  final _fruitsListStreamController = StreamController<List<Fruit>>();

  Stream<List<Fruit>> get fruitsListStream =>
      _fruitsListStreamController.stream;
  StreamSink<List<Fruit>> get fruitsListSink =>
      _fruitsListStreamController.sink;

  FruitBloc() {
    _fruitsListStreamController.add(fruitsList);
  }

  void dispose() {
    _fruitsListStreamController.close();
  }
}
