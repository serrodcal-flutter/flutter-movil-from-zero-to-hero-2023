void main(List<String> args) {
  final flipper = Dolphin();
  flipper.swim();
  final batman = Bat();
  batman.fly();
  batman.walk();
  final duck = Duck();
  duck.swim();
  duck.fly();
  duck.walk();
}

abstract class Animal {}

abstract class Mammal extends Animal {}

abstract class Bird extends Animal {}

abstract class Fish extends Animal {}

mixin class Walk {
  void fly() => print("It's flying");
}

mixin class Swim {
  void swim() => print("It's swimming");
}

mixin class Fly {
  void walk() => print("It's walking");
}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Fly, Walk {}

class Cat extends Mammal with Walk {}

class Dove extends Bird with Fly, Walk {}

class Duck extends Bird with Swim, Fly, Walk {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Swim, Fly {}
