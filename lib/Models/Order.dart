class Order {
  String _image;
  String _name;
  String _date;

  Order(this._image, this._name, this._date);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set date(String date) {
    this._date = date;
  }

  String get image => this._image;
  String get name => this._name;
  String get date => this._date;
}
