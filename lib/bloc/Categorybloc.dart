import 'dart:async';
import 'package:feelsgood/bloc/Category.dart';

class CategoryBloc {
  List<Category> _categoryList = [
    Category("images/fruit.png", "Fruits and \n vegetables"),
    Category("images/fruit.png", "Fruits and \n vegetables")
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
