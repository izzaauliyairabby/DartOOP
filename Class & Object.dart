import 'dart:io';



void main(List<String> args) {
  persegipanjang kotak1, kotak2;
  double luaskotak1;

  kotak1 = new persegipanjang();
  kotak1.panjang = 2;
  kotak1.lebar = 3;

  kotak2 = persegipanjang();
  kotak2.panjang = double.tryParse(stdin.readLineSync());
  kotak2.lebar = double.tryParse(stdin.readLineSync());


// Traditional Way
  // double panjang1, panjang2, lebar1, lebar2;

  // panjang1 = double.tryParse(stdin.readLineSync());
  // lebar1 = double.tryParse(stdin.readLineSync());
  // panjang2 = double.tryParse(stdin.readLineSync());
  // lebar2 = double.tryParse(stdin.readLineSync());

  // print(panjang1 * lebar1 + panjang2 * lebar2);

// Object Oriented Programming

class persegipanjang{
  double panjang;
  double lebar;

  double hitungluas(){
    return panjang * lebar;
  }
}
}
