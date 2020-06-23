import 'dart:async';
import 'package:feelsgood/Models/Category.dart';

class CategoryBloc {


  List<Category> _categoryList = [
    Category("images/fruit.png", "Fruits &\nvegetables", 0xFF58AF4A),
    Category("images/milk.png", "Diary \n products", 0xFFD2E1B5),
    Category("images/bread.png", "Breads &\n bakery", 0xFFF8C757),
    Category("images/sausage.png", "Meats", 0xFFEF6F6C),
    Category("images/cleaning.png", "Cleaners", 0xFFFF995D),
    Category("images/spice.png", "Spices", 0xFFF4DAA1),
  ];

  final _categoryListStreamController = StreamController<List<Category>>();

  Stream<List<Category>> get categoryListStream =>
      _categoryListStreamController.stream;
  StreamSink<List<Category>> get categoryListSink =>
      _categoryListStreamController.sink;

  CategoryBloc() {
    _categoryListStreamController.add(_categoryList);
  }

  void dispose() {
    _categoryListStreamController.close();
  }
}
