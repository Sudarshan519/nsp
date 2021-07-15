import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

String getAge(String dobYear) {
  if (dobYear.isNotEmpty) {
    try {
      final today = DateTime.now();
      final dobDate = DateFormat('yyyy-MM-dd').parse(dobYear);
      final duration = today.difference(dobDate);
      return (duration.inDays / 365).floor().toString();
    } catch (ex) {
      debugPrint(ex.toString());
      return '';
    }
  }
  return '';
}
