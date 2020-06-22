import 'dart:async';
import 'package:feelsgood/bloc/Offer.dart';

class OfferBloc {
  List<Offer> _offerList = [
    Offer(
        "Apple",
        "https://img2.exportersindia.com/product_images/bc-full/2019/12/3457075/fresh-apple-1576236928-5206404.jpeg",
        "2",
        "7"),
    Offer(
        "Apple",
        "https://img2.exportersindia.com/product_images/bc-full/2019/12/3457075/fresh-apple-1576236928-5206404.jpeg",
        "2",
        "7"),
  ];

  final _offerListStreamContoller = StreamController<List<Offer>>();

  Stream<List<Offer>> get itemListStream => _offerListStreamContoller.stream;
  StreamSink<List<Offer>> get itemListSink => _offerListStreamContoller.sink;

  OfferBloc() {
    _offerListStreamContoller.add(_offerList);
  }

  void dispose() {
    _offerListStreamContoller.close();
  }
}
