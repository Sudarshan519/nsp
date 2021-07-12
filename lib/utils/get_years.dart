import 'package:intl/intl.dart';

List<String> getYears() {
  final List<String> years = [];

  final now = DateTime.now();
  final formatter = DateFormat('yyyy');
  final formattedDate = formatter.format(now);

  int intYear = int.parse(formattedDate);

  for (int i = 50; i > 0; i--) {
    years.add('$intYear');
    intYear = intYear - 1;
  }

  return years;
}

List<String> getYearsWithOption(String option) {
  final List<String> years = getYears();
  years.insert(0, option);
  return years;
}
