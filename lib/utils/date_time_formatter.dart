import 'package:intl/intl.dart';

// ignore: avoid_classes_with_only_static_members
class DateTimeFormatter {
  static final DateFormat _dateFormatter = DateFormat('MMM dd, yyyy');
  static final DateFormat _timeFormatter = DateFormat('HH:MM');

  static String formatDate(String input) {
    DateTime date = DateTime.parse(input);
    if (date.isUtc) {
      date = date.toLocal();
    }
    return _dateFormatter.format(date);
  }

  static String formatDateToApi(DateTime date) {
    if (date.isUtc) {
      // ignore: parameter_assignments
      date = date.toLocal();
    }
    return date.toString().split(' ').first;
  }

  static String formatTime(String input) {
    DateTime time = DateTime.parse(input);
    if (time.isUtc) {
      time = time.toLocal();
    }
    // var t = _timeFormatter.format(time);
    var timeF = time.toString().split(' ').last.substring(0, 5);
    return timeF;
  }
}
