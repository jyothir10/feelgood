import 'dart:async';
import 'package:feelsgood/Models/Selling.dart';
import 'package:feelsgood/Repository/Selling.dart';

class SellingBloc {
  final _sellingListStreamController = StreamController<List<Selling>>();

  Stream<List<Selling>> get sellingListStream =>
      _sellingListStreamController.stream;
  StreamSink<List<Selling>> get sellingListSink =>
      _sellingListStreamController.sink;

  SellingBloc() {
    _sellingListStreamController.add(sellingList);
  }

  void dispose() {
    _sellingListStreamController.close();
  }
}