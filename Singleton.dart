// desain pattern dimana sebuah kelas hanya menjadi satu objek saja
import 'Class Services.dart';

import 'Class User.dart';
import 'Class Services.dart';

void main(List<String> args) async {
  Services services1 = Services();
  Services services2 = Services(); // akan menunjukkan bahwa tidak sama

  ServicesSingleton services3 = ServicesSingleton();
  ServicesSingleton services4 =
      ServicesSingleton(); // akan menunjukkan bahwa sama

  if (services1 == services2) {
    print("True bang sama soalnya");
  } else {
    print("False, beda sekali cokkkkkkk");
  }

  if (services3 == services4) {
    print("True bang sama soalnya");
  } else {
    print("False, beda sekali cokkkkkkk");
  }

  // User user = await services.getUserData();
}
