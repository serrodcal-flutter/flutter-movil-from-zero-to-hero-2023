void main(List<String> args) {
  // final wolverine = Hero('Logan', 'Regeneration'); // 'new' is not necessary
  final wolverine = Hero(name: 'Logan', power: 'Regeneration');

  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  // Hero(String name, String power): this.name = name, this.power = power; // First way

  // Hero(this.name, this.power); // Second way (preferred)

  Hero({required this.name, required this.power}); // Third way

  @override
  String toString() {
    return 'Hero($name, $power)';
  }
}
