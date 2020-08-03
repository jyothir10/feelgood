import 'dart:async';

import 'package:feelsgood/Models/Type.dart';
import 'package:feelsgood/Repository/Type.dart';

class TypeBloc {
  final _typeListStreamContoller = StreamController<List<Type>>();

  Stream<List<Type>> get typeListStream => _typeListStreamContoller.stream;
  StreamSink<List<Type>> get typeListSink => _typeListStreamContoller.sink;

  TypeBloc() {
    _typeListStreamContoller.add(typesList);
  }

  void dispose() {
    _typeListStreamContoller.close();
  }
}
