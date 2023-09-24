void main(List<String> args) {
  emitNums().listen((event) {
    print('Stream value: $event');
  });
}

Stream<int> emitNums() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    // print('Periodic: $value');
    return value;
  }).take(5);
}
