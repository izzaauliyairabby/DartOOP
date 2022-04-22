import 'Hero.dart';
import 'Monster.dart';
import 'Moster Kecoa.dart';
import 'Moster Ubur.dart';

void main(List<String> args) async {
  Hero h = Hero();
  monster m = monster();
  monster k = MonsterKecoa();
  monster u = MonsterUbur();

  List<monster> monsters = [];
  monsters.add(MonsterUbur());
  monsters.add(MonsterKecoa());
  monsters.add(MonsterUbur());

  for (monster m in monsters) {
    print(m.eathuman());
  }

  for (monster m2 in monsters) {
    if (m2 is MonsterUbur) print(m2.attackswim());
  }

  h.healthpoint = -10;
  m.healthpoint = 10;
  u.healthpoint = 20;
  k.healthpoint = 10;

  print("hero HP: " + h.healthpoint.toString());
  print("moster HP: " + m.healthpoint.toString());
  print("moster HP: " + k.healthpoint.toString());
  print("moster HP: " + u.healthpoint.toString());

  print(h.killmonster());
  print(m.eathuman());
  print((k as MonsterKecoa).attackfly());
  print((u as MonsterUbur).attackswim());
}
