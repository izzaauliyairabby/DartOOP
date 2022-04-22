import 'dart:io';

void main(List<String> args) {
  String input = stdin.readLineSync();
  int number = int.tryParse(input);
  print(input);
}
