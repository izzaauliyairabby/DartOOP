import 'Datetime_secure_box.dart';
import 'Generics & Generics Type.dart';
import 'Secure Box.dart';

void main(List<String> args) {
  var box = SecureBox<DateTime>(DateTime.now(), '123');
  var box2 = SecureBox<Person>(Person('Dodi Salmanan'), '123');
  print(box.getData('123').toString());
  print(box2.getData('123').name);
}

class Person {
  final String name;
  Person(this.name);
}

// Generic Type