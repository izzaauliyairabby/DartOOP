import 'Flying Monster.dart';
import 'Hero.dart';
import 'Monster Ucoa (Ubur Kecoa).dart';
import 'Monster.dart';
import 'Moster Kecoa.dart';
import 'Moster Ubur.dart';

void main(List<String> args) async {
  Hero h = Hero();
  monster k = MonsterKecoa();
  monster u = MonsterUbur();

  List<monster> monsters = [];
  monsters.add(MonsterUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUcoa());

  for (monster m in monsters) {
    if (m is Flyingmonster) {
      print((m as Flyingmonster).fly());
    }
  }
}
