class Category {
  String _image;
  String _category;

  Category(this._image, this._category);

  set image(String image) {
    this._image = image;
  }

  set category(String category) {
    this._category = category;
  }

  String get image => this._image;
  String get category => this._category;
}
