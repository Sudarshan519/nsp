import 'package:intl/intl.dart';

String currencyFormatter({
  required double value,
}) {
  final formatter = NumberFormat.currency(locale: "en_US", symbol: "JPY ");
  return formatter.format(value);
}

String currencyFormatterString({
  required String value,
}) {
  final doubleValue = double.parse(value);
  final formatter = NumberFormat.currency(locale: "en_US", symbol: "JPY ");
  return formatter.format(doubleValue);
}
