void main(List<String> args) async {
  // Future<void> is no needed
  print('Init');

  final value = await httpGet('http://localhost:8080/foo/bar');
  print(value);

  try {
    final valueError = await httpGetWithError('http://localhost:8080/foo/bar');
    print(valueError);
  } catch (err) {
    print('We got an error: $err');
  }

  print('End');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Response of the request http';
}

Future<String> httpGetWithError(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw 'Some error';
}
