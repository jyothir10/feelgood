import 'dart:async';
import 'package:feelsgood/Models/Category.dart';
import 'package:feelsgood/Repository/Category.dart';

class CategoryBloc {
  final _categoryListStreamController = StreamController<List<Category>>();

  Stream<List<Category>> get categoryListStream =>
      _categoryListStreamController.stream;
  StreamSink<List<Category>> get categoryListSink =>
      _categoryListStreamController.sink;

  CategoryBloc() {
    _categoryListStreamController.add(categoryList);
  }

  void dispose() {
    _categoryListStreamController.close();
  }
}
