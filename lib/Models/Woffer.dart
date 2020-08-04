class Woffer {
  String _image;
  String _name;
  String _offer;


  Woffer(this._image, this._name,this._offer);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set offer(String offer) {
    this._offer = offer;
  }

  String get image => this._image;
  String get name => this._name;
  String get offer => this._offer;
}