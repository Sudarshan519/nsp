import 'package:intl/intl.dart';

String currencyFormatter({
  required double value,
  int decimalDigits = 2,
  bool showSymbol = true,
  String symbol = "JPY",
}) {
  final formatter = NumberFormat.currency(
    locale: "en_US",
    decimalDigits: decimalDigits,
    symbol: showSymbol ? "$symbol " : '',
  );
  return formatter.format(value);
}

String currencyFormatterString({
  required String value,
  int decimalDigits = 2,
  bool showSymbol = true,
  String symbol = "JPY",
}) {
  final doubleValue = double.parse(value);
  try {
    final formatter = NumberFormat.currency(
      locale: "en_US",
      decimalDigits: decimalDigits,
      symbol: showSymbol ? "$symbol " : '',
    );
    return formatter.format(doubleValue);
  } catch (e) {
    return '<INVALID CURRENCY>';
  }
}
