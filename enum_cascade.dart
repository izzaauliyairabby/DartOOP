void main(List<String> args) {
  MonsterUcoa m = MonsterUcoa(status: UcoaStatus.Poisoned);
  print('Kegiatan Monster Ucoa');
  m
    ..move() // Cascade Notation
    ..eat();
}

enum UcoaStatus { Normal, Poisoned, Confused } // Enum

class MonsterUcoa {
  final status; // 1 Normal 2 Poisoned 3 Confused

  MonsterUcoa({this.status = UcoaStatus.Normal});

  void move() {
    switch (status) {
      case UcoaStatus.Normal:
        print('Ucoa is moving');
        break;
      case UcoaStatus.Poisoned:
        print('Ucoa cannot move. Ucoa Dying, need love and Ayang');
        break;
      case UcoaStatus.Confused:
        print('Ucoa is Confused, because has no Ayang');
        break;
      default:
        print('Ucoa is Spinning, Dart Confusing AF');
    }
  }

  void eat() {
    print('Ucoa is eating Indomie.');
  }
}
