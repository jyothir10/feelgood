import 'dart:async';
import 'package:feelsgood/Models/MarketCart.dart';
import 'package:feelsgood/Repository/ResCart.dart';

class ResCartBloc {
  final _resCartListStreamController = StreamController<List<MarketCart>>();
  Stream<List<MarketCart>> get resCartListStream =>
      _resCartListStreamController.stream;
  StreamSink<List<MarketCart>> get resCartListSink =>
      _resCartListStreamController.sink;

  ResCartBloc() {
    _resCartListStreamController.add(resCartList);
  }
  void dispose() {
    _resCartListStreamController.close();
  }
}
