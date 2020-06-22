import 'dart:async';
import 'package:feelsgood/bloc/Item.dart';

class ItemBloc {
  List<Item> _itemList = [
    Item(
        "Apple",
        "https://img2.exportersindia.com/product_images/bc-full/2019/12/3457075/fresh-apple-1576236928-5206404.jpeg",
        "2"),
    Item(
        "Potato",
        "https://cdn.tridge.com/image/original/36/03/0c/36030c5775d5079a599f5ee42c7134ec774acc7a.jpg",
        "2"),
    Item(
        "Engine oil",
        "https://images-na.ssl-images-amazon.com/images/I/917-LTkHNrL._SL1500_.jpg",
        "30"),
    Item(
        "Ghee",
        "https://www.spenlo.com/image/cache/catalog/Milma%20Ghee%20500ml-700x700.jpg",
        "2"),
    Item(
        "Medimix",
        "https://5.imimg.com/data5/LV/WI/MY-40681581/medimix-soap-250x250.jpg",
        "2.5"),
    Item(
        "Nabati",
        "https://thenishopping.com/image/cache/catalog/1parle/1nabati-wafer-cheese-richeese-550x550.jpg",
        "3"),
  ];

  final _itemListStreamController = StreamController<List<Item>>();

  Stream<List<Item>> get itemListStream => _itemListStreamController.stream;
  StreamSink<List<Item>> get itemListSink => _itemListStreamController.sink;

  ItemBloc() {
    _itemListStreamController.add(_itemList);
  }

  void dispose() {
    _itemListStreamController.close();
  }
}
