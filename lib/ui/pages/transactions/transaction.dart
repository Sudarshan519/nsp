class Transaction {
  final String placeName;
  final String activity;
  final String day;
  final String amount;
  final double lat;
  final double long;
  final DateTime date;
  const Transaction({
    required this.placeName,
    required this.activity,
    required this.day,
    required this.amount,
    required this.lat,
    required this.long,
    required this.date,
  });
}
