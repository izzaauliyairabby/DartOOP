void main(List<String> args) {
  List<Person> persons = [
    Person('Administrator', 32),
    Person('User', 52),
    Person('Administrator', 20),
    Person('Merchant', 52),
    Person('Administrator', 23),
    Person('User', 23),
    Person('Merchant', 22),
    Person('User', 12),
    Person('Merchant', 55),
  ];

  persons.sort((p1, p2) => p1.age - p2.age); // Mengurutkan dari yang terkecil
  persons.sort((p1, p2) =>
      p1.role.compareTo(p2.role)); // Mwngurutkan dari jenis terkecil

  persons.sort((p1, p2) {
    // mengurutkan dengan logika boolean
    if (p1.role.compareTo(p2.role) != 0) {
      return p1.role.compareTo(p2.role);
    } else {
      return p1.age.compareTo(p2.age);
    }
  });

  persons.sort((p3, p4) {
    // mengurutkan dengan logika boolean custom (RoleWeight)
    if (p3.roleWeight - p4.roleWeight != 0) {
      return p3.roleWeight - p4.roleWeight;
    } else {
      return p3.age.compareTo(p4.age);
    }
  });

  persons.forEach((element) {
    print(element.role + ' - ' + element.age.toString());
  });
}

class Person {
  final String role;
  final int age;

  Person(this.role, this.age);

  int get roleWeight {
    switch (role) {
      case 'Merchant':
        return 1;
        break;
      case 'Administrator':
        return 2;
        break;
      default:
        return 3;
    }
  }
}
