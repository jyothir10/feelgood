import 'dart:async';
import 'package:feelsgood/Models/Taj.dart';
import 'package:feelsgood/Repository/Taj.dart';

class TajBloc {
  final _tajListStreamController = StreamController<List<Taj>>();

  Stream<List<Taj>> get tajListStream => _tajListStreamController.stream;
  StreamSink<List<Taj>> get tajListSink => _tajListStreamController.sink;

  TajBloc() {
    _tajListStreamController.add(tajList);
  }

  void dispose() {
    _tajListStreamController.close();
  }
}
