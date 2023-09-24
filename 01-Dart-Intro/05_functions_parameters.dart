void main(List<String> args) {
  print(greetEveryone());
  print(greetEveryoneOneLine());
  print('Sum: ${addTwoNumbers(10, 20)}');
  print('Sum: ${addTwoNumbersOneLine(10, 20)}');
}

String greetEveryone() {
    return 'Hello everyone!';
}

String greetEveryoneOneLine() => 'Hello everyone!';

int addTwoNumbers(int a, int b) {
  return a + b;
}

int addTwoNumbersOneLine(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int? b]) {
  b ??= 0;
  return a + b;
}

int addTwoNumbersOptionalClean(int a, [int b = 0]) {
  return a + b;
}