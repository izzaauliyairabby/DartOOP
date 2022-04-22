class Person {
  String name;
  Function(String name) doinghobby;

  Person(this.name, {this.doinghobby});

  void takeARest() {
    if (doinghobby != null) {
      doinghobby(name);
    }
  }
}
