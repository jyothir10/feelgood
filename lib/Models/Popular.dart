class Popular {
  String _image;
  String _name;
  String _likes;
  String _price;
  String _resname;

  Popular(this._image, this._name,this._likes,this._price,this._resname);

  set image(String image) {
    this._image = image;
  }

  set name(String name) {
    this._name = name;
  }

  set likes(String likes) {
    this._likes = likes;
  }

  set price(String price) {
    this._price = price;
  }

  set resname(String resname) {
    this._resname = resname;
  }

  String get image => this._image;
  String get name => this._name;
  String get likes => this._likes;
  String get price => this._price;
  String get resname => this._resname;
}