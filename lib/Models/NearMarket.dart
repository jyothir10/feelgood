class NearMarket {
  String _image;
  String _name;
  String _rating;
  String _location;
  String _distance;

  NearMarket(
      this._name, this._image, this._location, this._rating, this._distance);

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

  set distance(String distance) {
    this._distance = distance;
  }

  String get image => this._image;
  String get name => this._name;
  String get rating => this._rating;
  String get location => this._location;
  String get distance => this._distance;
}
