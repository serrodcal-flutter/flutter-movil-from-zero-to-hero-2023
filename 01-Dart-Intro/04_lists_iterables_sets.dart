void main(List<String> args) {
  final numbers = [0,1,2,3,4,5,6,7,8,9,9];

  print('Numbers: $numbers');
  print('Numbers length: ${numbers.length}');
  print('Numbers index 0: ${numbers[0]}');
  print('Numbers first: ${numbers.first}');
  print('Numbers reversed: ${numbers.reversed} \n'); // This change to iterable

  final reversedNumbers = numbers.reversed; // Iterable<int>
  print('Iterable: $reversedNumbers');
  print('To List: ${numbers.toList()}');
  print('To Set: ${numbers.toSet()} \n'); // The values are uniques

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('Greater than 5 as Set: ${numbersGreaterThan5.toSet()}');

}