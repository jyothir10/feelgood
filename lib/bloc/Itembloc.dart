import 'dart:async';
import 'package:feelsgood/bloc/Item.dart';

class ItemBloc {

  List<Item> _itemList =[
    Item("Apple", "https://img2.exportersindia.com/product_images/bc-full/2019/12/3457075/fresh-apple-1576236928-5206404.jpeg", "2"),
    Item("Apple", "https://img2.exportersindia.com/product_images/bc-full/2019/12/3457075/fresh-apple-1576236928-5206404.jpeg", "2"),
  ];

  final _itemListStreamContoller = StreamController<List<Item>>();

  Stream<List<Item>> get itemListStream => _itemListStreamContoller.stream;
  StreamSink<List<Item>> get itemListSink => _itemListStreamContoller.sink;

  ItemBloc(){
    _itemListStreamContoller.add(_itemList);
  }

  void dispose(){
    _itemListStreamContoller.close();
  }


}
