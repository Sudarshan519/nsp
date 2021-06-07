///Also known as Statement
///
class TransactionItem {
  TransactionItem(
      {required this.id,
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
      required this.topupBy});

  int id;
  String topupBy;
  int topupAmount;
  String currency;
  int? referenceId;
  int? transactionId;
  bool status;
  String? transactionStatus;
  String transactionFor;
  String transactionType;
  String? remarks;
  String createdAt;
  String updatedAt;
  String user;

  // Transaction.fromJson(Map<String, dynamic> json) {
  //   id = json['id'] as int;
  //   topupAmount = json['topup_amount'] as int;
  //   currency = json['currency'] as String;
  //   referenceId = json['reference_id'] as int;
  //   transactionId = json['transaction_id'] as int;
  //   status = json['status'] as bool;
  //   transactionStatus = json['transaction_status'] as String;
  //   transactionFor = json['transaction_for'] as String;
  //   transactionType = json['transaction_type'] as String;
  //   remarks = json['remarks'] as String;
  //   createdAt = json['created_at'] as String;
  //   updatedAt = json['updated_at'] as String;
  //   user = json['user'] as String;
  //   topupBy = json['topup_by'] as String;
  // }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['id'] = id;
  //   data['topup_amount'] = topupAmount;
  //   data['currency'] = currency;
  //   data['reference_id'] = referenceId;
  //   data['transaction_id'] = transactionId;
  //   data['status'] = status;
  //   data['transaction_status'] = transactionStatus;
  //   data['transaction_for'] = transactionFor;
  //   data['transaction_type'] = transactionType;
  //   data['remarks'] = remarks;
  //   data['created_at'] = createdAt;
  //   data['updated_at'] = updatedAt;
  //   data['user'] = user;
  //   data['topup_by'] = topupBy;
  //   return data;
  // }
}
