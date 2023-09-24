void main(List<String> args) {
  print(greetPerson(name: 'Sergio'));
  print(greetPerson(name: 'Sergio', greeting: 'Hola,'));
}

String greetPerson({required name, String greeting = 'Hi,'}) {
  return '$greeting $name';
}