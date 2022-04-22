import 'dart:io';
import 'Person.dart';
import 'Student.dart';

void main(List<String> args) {
  Person p = Person(name: 'Joko Siswanto');
  Person S = student();
  print(p.name);
  print(S.name);
}
