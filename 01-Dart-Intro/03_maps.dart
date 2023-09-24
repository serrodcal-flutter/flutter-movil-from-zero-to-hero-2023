void main(List<String> args) {
  //final pokemon = {}; // Use type because Dart is going to work better
  final Map<String, dynamic> pokemon = {
    'name': 'Bulbasaur',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['tackle'],
    'sprites': {
      1: 'bulbasaur/front.png',
      2: 'bulbasaur/back.png',
    },
  }; // or Map<String, Object> because the value can be anything

  print(pokemon);
  print(pokemon['name']);
  print('Name ${ pokemon['name'] }');
  print('Front: ${ pokemon['sprites'] }');
  print('Front: ${ pokemon['sprites'][1] }');
  print('Back: ${ pokemon['sprites'][2] }');
}