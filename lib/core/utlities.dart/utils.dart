import 'package:intl/intl.dart';

// ignore: avoid_classes_with_only_static_members
class Utils {
  static final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');
  static final DateFormat _timeFormatter = DateFormat('HH:MM');

  static String formatDate(String input) {
    final DateTime date = DateTime.parse(input);
    return _dateFormatter.format(date);
  }

  static String formatTime(String input) {
    final DateTime time = DateTime.parse(input);
    return _timeFormatter.format(time);
  }
}
