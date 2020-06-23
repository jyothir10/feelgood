import 'dart:async';
import 'package:feelsgood/Models/Offer.dart';
import 'package:feelsgood/Repository/Offer.dart';

class OfferBloc {
  final _offerListStreamContoller = StreamController<List<Offer>>();

  Stream<List<Offer>> get itemListStream => _offerListStreamContoller.stream;
  StreamSink<List<Offer>> get itemListSink => _offerListStreamContoller.sink;

  OfferBloc() {
    _offerListStreamContoller.add(offerList);
  }

  void dispose() {
    _offerListStreamContoller.close();
  }
}
