 //// S-ingle Responsibility Principle
//// 0-pen / Closed Principle
//// L-iskov Substitution Principle
//// I-nterface Segregation Principle
//// D-ependency Inversion Principle

//  S-ingle Resposibility Principle
import 'package:flutter/material.dart';
// !-------------------------------------------------------------
//// WRONG / Salah
class Car {
  void turnOnCar() {
    // ...
  }
  void turnoffCar() {
    // ...
  }
  void turnOnAirConditioner() {
    // ...
  }
  void turnoffAirConditioner() {
// ...
  }
  void playMusic() {
// ...
  }


// Right / Benar
class Car2 {
AirConditioner airconditioner;
Radio radio;
void turnOnCar2() {
}
void turnoffCar2() {
  }
}
class
AirConditioner {
void turnOnAirConditioner() {
//...
  }
}
void turnoffAirConditioner() {
  }
}
class Radio {
void playMusic() {
// ...
  }
}
// !-------------------------------------------------------------

//  O-pen / Closed Principle
// WRONG / SALAH
class MyRobot {
   void talk() {
     //..
}
void killCrocoach() {
//..
}
void fly() {
//..
  }
}

// RIGHT / BENAR
class MyRobot2 {
  void talk() {
    //..
  }
void walk() {
  //..
  }
}

class MySuperRobot extends MyRobot {
void killCrocoach() {
//..
  }
}

// !-------------------------------------------------------------
//  L=iskov Subtitution Principle
// BAD
 class Duck {
void swin() {
}
void quack() {
}
void eat() {
//...
  }
}
class Rubber Duck extends Duck {
@override
void eat()
// do nothing

// GOOD AND RIGHT / BAIK DAN BENAR
 class Duck
void swim() {
}
void quack() {
}
void eat() {
}
H
class Malard extends Duck {
@override
void eat() {
// do Malard way of weating
  }
}

// !-------------------------------------------------------------

// I=nterface Segregation Principle
 //// WRONG
abstract class IHeroAbility f
void heal();
void castMagic();
void stealMoney();
}
abstract class Hero implements IHeroAbility {
void regularAttack();
class Thief extends Hero {
@override
void castMagic() {
// do nothing
  }
}
Doverride
void heal() {
// do nothing
}
@override
void regularAttack() {
}
@override
void stealMoney() {
//..
  }
}

//---------------------

class Thief extends Hero {
@override
void castMagic() {
// do nothing
}
@override
void heal() {
// do nothing
}
@override
void regularAttack() {
11
}
override
void stealMoney() {
//..
  }
}

//---------------------

class BlackMage extends Hero {
@override
void castMagic() {
 }
override
void heal() {
// do nothing
}
@override
void regularAttack() {
}
override
void stealMoney() {
// do nothing
  }
}

// !-------------------------------------------------------------
 //// RIGHT

abstract class Hero2 {
void regularAttack();
}

// !-----------------------------------

abstract class IMagicCaster {
void castMagic();
}
abstract class IHealer {
void heal();
}
abstract class IStealer {
void stealMoney();
}

// !------------------------------------

class Thief2 extends Hero implements IStealer {
@override
void regularAttack() {
  //...
}
@override
void stealMoney() {
 //...
  }
}

// !-----------------------------------

 class WhiteMage extends Hero implements IHealer, IMagicCaster {
@override
void castMagic() {
//...
}
Doverride
void heal() {
//...
}
@override
void regularAttack() {
  }
}

// !------------------------------------
 class BlackMage2 extends Hero implements IMagicCaster {
@override
void castMagic() {
//..
}
override
void regularAttack() {
  }
}

// !-------------------------------------------------------------

//  D-ependency Inversion Principle
//  WRONG

class User {
// User related things
}
class UserManager {
void saveUserData(User user) {
// connect to firebase
// save data
  }
}

 //// RIGHT
class User {
// User related things
}
class UserManager {
final IDatastorage datastorage;
UserManager(this.datastorage);
void saveUserData(User user) {
datastorage.saveData(user);
  }
}
abstract class IDatastorage {
void saveData(User user);
}
class FirebaseStorage implements IDatastorage {
@override
void saveData(User user) {
// connect to firebase
// save datal
  }
}
class LocalStorage implements IDatastorage {
@override
void saveData(User user) {
// connect to local storage
// save data

  }
}