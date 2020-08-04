import 'dart:async';
import 'package:feelsgood/Models/Woffer.dart';
import 'package:feelsgood/Repository/Woffer.dart';

class WofferBloc {
  final _wofferListStreamController = StreamController<List<Woffer>>();

  Stream<List<Woffer>> get wofferListStream =>
      _wofferListStreamController.stream;
  StreamSink<List<Woffer>> get wofferListSink =>
      _wofferListStreamController.sink;

  WofferBloc() {
    _wofferListStreamController.add(wofferList);
  }

  void dispose() {
    _wofferListStreamController.close();
  }
}
