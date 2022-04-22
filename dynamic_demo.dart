import 'var_dynamic_demo.dart';

void main(List<String> args) {
  dynamic myDynamic;

  var myDynamic2 = 'Hello'; // Supaya dapat diisi dengan type data apapun
  int myDynamic3 = 12; // mencakup int, string dsb.
  var myDynamic4 = Person();
  if (myDynamic2 is Person) {
    // kekurangan tidak dapat mendeteksi method didalamnya
    print((myDynamic as Person).name); // Solusi diconvert menggunakan AS

    print(myDynamic.name);
  }

  var myVar = Person();
}

class Person {
  String name = 'No name';
}
