import 'dart:async';
import 'package:feelsgood/Models/Order.dart';
import 'package:feelsgood/Repository/Order.dart';

class OrderBloc {
  final _orderListStreamController = StreamController<List<Order>>();

  Stream<List<Order>> get orderListStream => _orderListStreamController.stream;
  StreamSink<List<Order>> get orderListSink => _orderListStreamController.sink;

  OrderBloc() {
    _orderListStreamController.add(orderList);
  }

  void dispose() {
    _orderListStreamController.close();
  }
}
