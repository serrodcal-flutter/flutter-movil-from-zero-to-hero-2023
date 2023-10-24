import 'package:intl/intl.dart';

class HumanFormats {
  static String number(double num, [int decimals = 0]) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: decimals,
      symbol: '',
      locale: 'en-EN',
    ).format(num);

    return formatterNumber;
  }
}
