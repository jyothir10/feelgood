class Offer {
  String _image;
  String _name;
  String _price;
  String _oldPrice;

  Offer(this._name, this._image, this._price, this._oldPrice);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set price(String price) {
    this._price = price;
  }

  set oldPrice(String oldPrice) {
    this._oldPrice = oldPrice;
  }

  String get image => this._image;
  String get name => this._name;
  String get price => this._price;
  String get oldPrice => this._oldPrice;
}
