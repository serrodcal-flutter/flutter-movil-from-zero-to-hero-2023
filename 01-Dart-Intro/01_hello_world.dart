void main(List<String> args) {
  //var name = 'Sergio';
  final String name = 'Sergio'; // Better use String because it's more legible
  //name = 'Pepe'; // Not allowed because is final
  //late final String name; // Beucase of the value is not reade yet
  //const name = 'Sergio'; // final is assigned in run-time, const is assigned in building-time (faster)
  print('Hi, $name'); // String interpolation, because injects the variable value
  print('Hi, ${name.toUpperCase()}'); // Same but injecting code
  print('Hi, ${1 + 1}');
}