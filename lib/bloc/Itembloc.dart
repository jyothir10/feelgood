import 'dart:async';
import 'package:feelsgood/Models/Item.dart';
import 'package:feelsgood/Repository/Item.dart';

class ItemBloc {
  final _itemListStreamController = StreamController<List<Item>>();

  Stream<List<Item>> get itemListStream => _itemListStreamController.stream;
  StreamSink<List<Item>> get itemListSink => _itemListStreamController.sink;

  ItemBloc() {
    _itemListStreamController.add(itemList);
  }

  void dispose() {
    _itemListStreamController.close();
  }
}
