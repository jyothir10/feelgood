import 'dart:async';
import 'package:feelsgood/Models/MarketCart.dart';
import 'package:feelsgood/Repository/MarketCart.dart';

class MarketCartBloc {
  final _marketCartListStreamController = StreamController<List<MarketCart>>();

  Stream<List<MarketCart>> get marketCartListStream =>
      _marketCartListStreamController.stream;
  StreamSink<List<MarketCart>> get marketCartListSink =>
      _marketCartListStreamController.sink;

  MarketCartBloc() {
    _marketCartListStreamController.add(marketCartList);
  }
  void dispose() {
    _marketCartListStreamController.close();
  }
}
