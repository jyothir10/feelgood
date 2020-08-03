class Type {
  String _image;
  String _name;

  Type(this._name, this._image);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  String get image => this._image;
  String get name => this._name;
}
