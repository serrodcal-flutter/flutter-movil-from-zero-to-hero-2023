void main(List<String> args) async {
  // Future<void> is no needed
  print('Init');

  try {
    final valueError = await httpGetWithError('http://localhost:8080/foo/bar');
    print(valueError);
  } on Exception catch (err) {
    print('We got an Exception: $err');
  } catch (err) {
    print('We got a terrifying error: $err');
  } finally {
    print('End of try-catch');
  }

  print('End');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));
  return 'Response of the request http';
}

Future<String> httpGetWithError(String url) async {
  await Future.delayed(const Duration(seconds: 2));
  throw Exception('Bad request'); // To get into on Exception
  // throw 'Uncontrolled error'; // To get into catch
}
