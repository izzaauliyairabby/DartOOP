import 'dart:ffi';

import 'ignore parameter.dart';

void main(List<String> args) {
  var p = Person('David', doinghobby: davidHobby);
  p.takeARest();

  var q = Person('David', doinghobby: (_) {
    print("playing game");
    print('swimming in the game');
  });

  q.takeARest();
}

void davidHobby(String name) {
  print('$name is playing football');
}
