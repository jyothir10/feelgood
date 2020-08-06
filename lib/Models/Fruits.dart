class Fruit {
  String _name;
  String _image;
  bool _isPressed;

  Fruit(this._name, this._image, this._isPressed);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set isPressed(bool isPressed) {
    this._isPressed = isPressed;
  }

  String get image => this._image;
  String get name => this._name;
  bool get isPressed => this._isPressed;
}
