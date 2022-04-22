import 'dart:io';

void main(List<String> args) {
  int number = int.tryParse(stdin.readLineSync());

  output = (number > 0) ? "Positif" : "Negatif atau Nol";

  print(output);

  // if (number > 0) {
  //   print("Positif");
  // } else if (number < 0) {
  //   print("Negatif");
  // } else {
  //   print("Nol");
}
