library cake;

class MainCake {
//non-private property
//list of strings
  List<String> randomPieceOfCakes = ['cake3', 'cake4', 'cake5', 'cake6'];

  //private properties
  String _pieceOfCake1 = "cake1";
  String pieceOfCake2 = "cake2";
}

class Person {
  String _name;
  var _address;

  String getName() {
    // Getter
    return this._name;
  }

  void setName(String name) {
    //  Setter
    this._name = name;
  }

  String getAddress() {
    return this._address;
  }

  void setAddress(String address) {
    this._address = address;
  }
}

// fungsi main
main() {
  var dian = new Person();
  dian.setName("Dian");
  dian.setAddress("Lombok");
} // https://www.petanikode.com/belajar-dart/
