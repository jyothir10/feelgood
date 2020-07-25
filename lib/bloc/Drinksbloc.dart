import 'package:feelsgood/Models/Item.dart';
import 'package:feelsgood/Repository/Drinks.dart';
import 'dart:async';

class DrinksBloc {
  final _drinksListStreamController = StreamController<List<Item>>();

  Stream<List<Item>> get drinksListStream => _drinksListStreamController.stream;
  StreamSink<List<Item>> get drinksListSink => _drinksListStreamController.sink;

  DrinksBloc() {
    _drinksListStreamController.add(drinksList);
  }

  void dispose() {
    _drinksListStreamController.close();
  }
}
