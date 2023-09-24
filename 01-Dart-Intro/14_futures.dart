void main(List<String> args) {
  print('Init');

  httpGet('http://localhost:8080/foo/bar').then((value) {
    print(value);
  });

  httpGetWithError('http://localhost:8080/foo/bar').then((value) {
    print(value);
  }).catchError((err) {
    print(err);
  });

  print('End');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Response of the request http';
  });
}

Future<String> httpGetWithError(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    throw 'Some error';
  });
}
