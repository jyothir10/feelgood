import 'dart:async';
import 'package:feelsgood/Models/Search.dart';
import 'package:feelsgood/Repository/Search.dart';

class SearchBloc {
  final _searchListStreamController = StreamController<List<Search>>();

  Stream<List<Search>> get searchListStream =>
      _searchListStreamController.stream;
  StreamSink<List<Search>> get searchListSink =>
      _searchListStreamController.sink;

  SearchBloc() {
    _searchListStreamController.add(searchList);
  }

  void dispose() {
    _searchListStreamController.close();
  }
}
