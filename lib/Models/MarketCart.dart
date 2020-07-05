class MarketCart {
  String _image;
  String _name;
  String _price;
  int _qty;

  MarketCart(this._name, this._image, this._price, this._qty);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set price(String price) {
    this._price = price;
  }

  set quantity(int qty) {
    this._qty = qty;
  }

  String get image => this._image;
  String get name => this._name;
  String get price => this._price;
  int get quantity => this._qty;
}
