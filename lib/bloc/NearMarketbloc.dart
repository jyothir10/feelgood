import 'dart:async';
import 'package:feelsgood/Models/NearMarket.dart';
import 'package:feelsgood/Repository/NearMarket.dart';

class NearMarketBloc {
  final _nearMarketListStreamController = StreamController<List<NearMarket>>();

  Stream<List<NearMarket>> get nearMarketListStream =>
      _nearMarketListStreamController.stream;
  StreamSink<List<NearMarket>> get nearMarketListSink =>
      _nearMarketListStreamController.sink;

  NearMarketBloc() {
    _nearMarketListStreamController.add(nearMarketList);
  }

  void dispose() {
    _nearMarketListStreamController.close();
  }
}
