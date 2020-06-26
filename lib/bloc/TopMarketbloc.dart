import 'dart:async';
import 'package:feelsgood/Repository/TopMarket.dart';
import 'package:feelsgood/Models/TopMarket.dart';

class TopMarketBloc {
  final _topMarketListStreamController = StreamController<List<TopMarket>>();

  Stream<List<TopMarket>> get topMarketListStream =>
      _topMarketListStreamController.stream;
  StreamSink<List<TopMarket>> get topMarketListSink =>
      _topMarketListStreamController.sink;

  TopMarketBloc() {
    _topMarketListStreamController.add(topMarketList);
  }

  void dispose() {
    _topMarketListStreamController.close();
  }
}
