class TopMarket {
  String _image;
  String _name;
  String _rating;
  String _location;

  TopMarket(this._name, this._image, this._location, this._rating);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set rating(String rating) {
    this._rating = rating;
  }

  set location(String location) {
    this._location = location;
  }

  String get image => this._image;
  String get name => this._name;
  String get rating => this._rating;
  String get location => this._location;
}
