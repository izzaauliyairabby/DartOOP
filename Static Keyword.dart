class orang {
  String name;
  int age;
  static int maxAge = 150;

  orang(this.name, int age) {
    this.age = (age > 150) ? 150 : age;
  }
}
