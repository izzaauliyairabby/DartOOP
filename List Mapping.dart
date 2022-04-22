import 'dart:io';
import 'dart:core';

void main(List<String> args) {
  List<int> mylist = [];
  List<int> list = [1, 2, 3];
  list[0] = 10;
  int e = list[2];
  int a = list[0];
  print(e); // list dihitung dari nol, bukan satu
  print(a);

  list.forEach((bilangan) {
    print(bilangan);
  });

// Add, Insert.
  List<int> mylist2 = [1, 2, 3];
  List<int> list2 = [1, 2, 3];
  mylist2.add(10);
  mylist2.addAll(list);
  mylist2.insert(1, 20);
  mylist2.insertAll(2, [1111]);
  print(mylist2);

// Remove
  List<int> mylist3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> list3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  mylist3.remove(1);
  mylist3.removeRange(6, 9);
  print(mylist3);

// Add Some Boolean
  List<int> mylist4 = [1, 2, 3, 4, 5];
  List<int> list4 = [1, 2, 3, 4, 5];
  mylist4.removeWhere((number) => number % 2 != 0);
  if (mylist4.contains(4)) {
    print("Betul, ada angka 4");
  }
  print(mylist4);

// Sublist
  List<int> mylist5 = [1, 2, 3, 4, 5, 6, 7];
  List<int> list5 = [1, 2, 3, 4, 5, 6, 7];
  list5 = mylist5.sublist(2, 6);
  print(list5);

// Menghapus / Clear
  List<int> mylist6 = [1, 2, 3, 4, 5, 6, 7];
  List<int> list6 = [1, 2, 3, 4, 5, 6, 7];
  mylist6.clear(); // Menghapus seluruhnya
  print(mylist6);

// Sort
  List<int> mylist7 = [1, 3, 4, 2, 7, 5, 6];
  List<int> list7 = [1, 3, 4, 2, 7, 5, 6];
  mylist7.sort(); // Mengurutkan
  print(mylist7);

// Sort with Boolean
  List<int> mylist8 = [1, 3, 4, 2, 7, 5, 6];
  List<int> list8 = [1, 3, 4, 2, 7, 5, 6];
  mylist8.sort(((a, b) => b - a)); // Mengurutkan terbalik
  print(mylist8);

// Every
  List<int> mylist9 = [1, 3, 4, 2, 7, 5, 6];
  List<int> list9 = [1, 3, 4, 2, 7, 5, 6];
  mylist9.every((number) => number % 2 != 0);
  print(mylist9);

// My list Remove Where plus if elif else
  List<int> mylist10 = [1, 2, 3, 4, 5];
  List<int> list10 = [1, 2, 3, 4, 5];
  mylist10.removeWhere((number) => number % 2 != 0);
  if (mylist10.every((number) => number % 2 != 0)) {
    print("semua ganjil");
  } else {
    print("Tidak Semua Ganjil");
  }

// List Mapping
  // List<int> mylist11 = [1, 1, 6, 4, 3, 6, 2];
  // List<int> list11 = [];

  // list11 = mylist11.map((number) => "Angka" + number.toString()).toList();
  // list11.forEach((str) {
  //   print(str);
  // });
}
