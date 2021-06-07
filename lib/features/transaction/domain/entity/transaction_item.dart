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
  });

  int? id;
  String? topupBy;
  int? topupAmount;
  String? currency;
  int? referenceId;
  int? transactionId;
  bool? status;
  String? transactionStatus;
  String? transactionFor;
  String? transactionType;
  String? remarks;
  String? createdAt;
  String? updatedAt;
  String? user;
}
