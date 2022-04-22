import 'Flying Monster.dart';
import 'Mixin.dart';
import 'Moster Ubur.dart';

class MonsterUcoa extends MonsterUbur
    implements Flyingmonster {
  @override
  String fly() {
    return "Terbang setelah berenang";
  }
}
