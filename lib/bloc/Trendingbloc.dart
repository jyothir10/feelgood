import 'dart:async';
import 'package:feelsgood/Models/Trending.dart';
import 'package:feelsgood/Repository/Trending.dart';

class TrendingBloc {
  final _trendingListStreamController = StreamController<List<Trending>>();

  Stream<List<Trending>> get trendingListStream =>
      _trendingListStreamController.stream;
  StreamSink<List<Trending>> get topMarketListSink =>
      _trendingListStreamController.sink;

  TrendingBloc() {
    _trendingListStreamController.add(trendingList);
  }

  void dispose() {
    _trendingListStreamController.close();
  }
}
