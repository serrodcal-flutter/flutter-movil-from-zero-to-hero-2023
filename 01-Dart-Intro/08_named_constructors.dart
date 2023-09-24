void main(List<String> args) {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Start',
    'power': 'Money',
    'isAlive': true,
  };

  // final ironman = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');
  // final ironman = Hero(isAlive: rawJson['isAlive'] ?? false, power: 'Money', name: 'Tony Stark');
  final ironman = Hero.fromJson(rawJson);

  print(ironman.toString());
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return 'Hero($name, $power, ${isAlive ? 'YES!' : 'Nope'})';
  }
}
