class NearRes {
  String _image;
  String _name;

  NearRes(this._image, this._name);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  String get image => this._image;
  String get name => this._name;
}