import 'dart:async';
import 'package:feelsgood/Models/NearRes.dart';
import 'package:feelsgood/Repository/NearRes.dart';

class NearResBloc {
  final _nearResListStreamController = StreamController<List<NearRes>>();

  Stream<List<NearRes>> get nearResListStream =>
      _nearResListStreamController.stream;
  StreamSink<List<NearRes>> get nearResListSink =>
      _nearResListStreamController.sink;

  NearResBloc() {
    _nearResListStreamController.add(nearResList);
  }

  void dispose() {
    _nearResListStreamController.close();
  }
}