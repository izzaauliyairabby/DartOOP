const pi = 3.14; //Top level
void main(List<String> args) {
  var a = Constclass(number: 5);
  var b = Constclass(number: 5); // false

  var c = const Constclass(number: 5);
  var d = const Constclass(number: 5); // True

  print(identical(a, b));
  print(identical(c, d));
  print(pi);
}

class RegularClass {
  final int number;
  static const myConst = 12;

  RegularClass({this.number}) {
    const anotherConst = 14;
    print(anotherConst);
  }
}

class Constclass {
  final int number;
  const Constclass({this.number});
}
