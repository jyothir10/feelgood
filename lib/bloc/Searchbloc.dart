import 'dart:async';
import 'package:feelsgood/Models/Search.dart';

class SearchBloc {
  List<Search> _searchList = [
    Search(
        "Ghee",
        "https://www.spenlo.com/image/cache/catalog/Milma%20Ghee%20500ml-700x700.jpg",
        "2"),
    Search(
        "Nabati",
        "https://thenishopping.com/image/cache/catalog/1parle/1nabati-wafer-cheese-richeese-550x550.jpg",
        "3"),
    Search(
        "Medimix",
        "https://5.imimg.com/data5/LV/WI/MY-40681581/medimix-soap-250x250.jpg",
        "2.5"),
    Search(
        "Engine oil",
        "https://images-na.ssl-images-amazon.com/images/I/917-LTkHNrL._SL1500_.jpg",
        "30"),
    Search(
        "Potato",
        "https://cdn.tridge.com/image/original/36/03/0c/36030c5775d5079a599f5ee42c7134ec774acc7a.jpg",
        "2"),
    Search(
        "Apple",
        "https://img2.exportersindia.com/product_images/bc-full/2019/12/3457075/fresh-apple-1576236928-5206404.jpeg",
        "2"),
  ];

  final _searchListStreamController = StreamController<List<Search>>();

  Stream<List<Search>> get searchListStream =>
      _searchListStreamController.stream;
  StreamSink<List<Search>> get searchListSink =>
      _searchListStreamController.sink;

  SearchBloc() {
    _searchListStreamController.add(_searchList);
  }

  void dispose() {
    _searchListStreamController.close();
  }
}
