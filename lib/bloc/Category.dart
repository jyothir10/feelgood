class Category {
  String _image;
  String _category;
  int _color;

  Category(this._image, this._category, this._color);

  set image(String image) {
    this._image = image;
  }

  set category(String category) {
    this._category = category;
  }

  set color(int color) {
    this._color = color;
  }

  String get image => this._image;
  String get category => this._category;
  int get color => this._color;
}
