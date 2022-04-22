import 'Flying Monster.dart';
import 'Mixin.dart';
import 'Monster.dart';
import 'Character.dart';

class MonsterKecoa extends monster implements Flyingmonster {
  String attackfly() => "Swoosshh!!!! Clarkkk!";

  @override
  String fly() => "Swooossh!";

  @override
  String move() {
    return "Beterbangan menghampiri wajahmu";
  }
}
