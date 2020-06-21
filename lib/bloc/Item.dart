class Item {
  String _image;
  String _name;
  String _price;

  Item(this._name, this._image, this._price);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._image = name;
  }

  set price(String price) {
    this._image = price;
  }

  String get image => this._image;
  String get name => this._name;
  String get price => this._price;
}
