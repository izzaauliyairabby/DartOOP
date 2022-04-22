import 'Character.dart';
import 'Mixin.dart';

abstract class monster extends character {
  int _healthpoint;

  int get healthpoint => _healthpoint;
  set healthpoint(int value) => _healthpoint = value;

  String eathuman() => "Grrr... Delicious filty human...";
  String move();
  
}
