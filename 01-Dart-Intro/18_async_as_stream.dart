void main(List<String> args) {
  emitNums().listen((event) {
    print('Stream value: $event');
  });
}

Stream emitNums() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];
  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
