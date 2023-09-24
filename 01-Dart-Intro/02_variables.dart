void main(List<String> args) {
  final String pokemon = 'Bulbasaur';
  final int hp = 100;
  final bool isAlive = true;
  final abilities = <String>['tackle']; // <String> is optional, other way: final List<String> abilities = ['tackle'];
  final List<String> sprites = ['bulbasaur/front.png', 'bulbasaur/back.png'];

  // In general, try to avoid dynamic type. Use it when you have to map a complex type
  // dynamic == null // dynamic is null by default, so a warning will be raised
  dynamic errorMessage = 'Some error'; // dynamic is always nullable, ? is not necessary
  errorMessage = () => true;
  errorMessage = null;
  // errorMessage += 1 // Be careful, dynamic allows this but this will raise an error

  bool? isAliveNullable; // Allow null, because Dart is null safety

  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage

  $isAliveNullable
  """);
}