import 'dart:io';

void main(List<String> args) {
  int number = int.tryParse(stdin.readLineSync());
  String output;

  // output = (number > 0) ? "Positif" : "Negatif atau Nol";

  // if (number > 0) {
  //   print("Positif");
  // } else if (number < 0) {
  //   print("Negatif");
  // } else {
  //   print("Nol");

  switch (number) {
    case 0:
      print("nol");
      break;
    case 1:
      print(number);
      print("satu");
      break;
    case 2:
      print("dua");
      break;
    default:
      print("bilangan lain");
  }

  print(output);
}
