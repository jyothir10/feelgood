import 'dart:async';
import 'package:feelsgood/Models/Popular.dart';
import 'package:feelsgood/Repository/Popular.dart';

class PopularBloc {
  final _popularListStreamController = StreamController<List<Popular>>();

  Stream<List<Popular>> get popularListStream =>
      _popularListStreamController.stream;
  StreamSink<List<Popular>> get popularListSink =>
      _popularListStreamController.sink;

  PopularBloc() {
    _popularListStreamController.add(popularList);
  }

  void dispose() {
    _popularListStreamController.close();
  }
}