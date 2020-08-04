class Selling {
  String _image;
  String _name;
  String _rate;
  String _likes;

  Selling(this._image, this._name,this._rate,this._likes);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set rate(String rate) {
    this._rate = rate;
  }

  set likes(String likes) {
    this._likes = likes;
  }

  String get image => this._image;
  String get name => this._name;
  String get rate => this._rate;
  String get likes => this._likes;
}