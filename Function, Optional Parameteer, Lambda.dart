import 'dart:io';

// Function
double luassegiempat (double panjang, double lebar){
double hasil;
hasil = panjang * lebar;
return hasil;
}

void main(List<String> args) {
double p, l, luas;

p = double.tryParse(stdin.readLineSync());
l = double.tryParse(stdin.readLineSync());

luas = luassegiempat(p, l);

print(luas);

}
