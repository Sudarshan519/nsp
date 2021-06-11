///Also known as Statement
///
class TransactionItem {
  TransactionItem({
    required this.id,
    required this.topupAmount,
    required this.currency,
    this.referenceId,
    this.transactionId,
    required this.status,
    this.transactionStatus,
    required this.transactionFor,
    required this.transactionType,
    this.remarks,
    required this.createdAt,
    required this.updatedAt,
    required this.user,
    required this.topupBy,
    required this.transactionName,
    required this.icon,
    required this.paidWith,
    required this.gps,
  });

  int? id;
  String? topupBy;
  double? topupAmount;
  String? currency;
  String? referenceId;
  String? transactionId;
  bool? status;
  String? transactionStatus;
  String? transactionFor;
  String? transactionType;
  String? transactionName;
  String? remarks;
  String? createdAt;
  String? updatedAt;
  String? user;
  String? icon;
  String? paidWith;
  String? gps;
}
