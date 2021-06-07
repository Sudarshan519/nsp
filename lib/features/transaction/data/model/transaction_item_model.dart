import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';

class TransactionItemModel extends TransactionItem {
  TransactionItemModel({
    required int? id,
    required int? topupAmount,
    required String? currency,
    required int? referenceId,
    required int? transactionId,
    required bool? status,
    required String? transactionStatus,
    required String? transactionFor,
    required String? transactionType,
    required String? remarks,
    required String? createdAt,
    required String? updatedAt,
    required String? user,
    required String? topupBy,
  }) : super(
          topupBy: topupBy,
          transactionFor: transactionFor,
          transactionType: transactionType,
          updatedAt: updatedAt,
          user: user,
          referenceId: referenceId,
          remarks: remarks,
          transactionId: transactionId,
          transactionStatus: transactionStatus,
          id: id,
          status: status,
          createdAt: createdAt,
          currency: currency,
          topupAmount: topupAmount,
        );
  factory TransactionItemModel.fromJson(Map<String, dynamic> json) =>
      TransactionItemModel(
        id: json['id'] as int?,
        topupBy: json['topup_by'] as String?,
        topupAmount: json['topup_amount'] as int?,
        currency: json['currency'] as String?,
        referenceId: json['reference_id'] as int?,
        transactionId: json['transaction_id'] as int?,
        status: json['status'] as bool?,
        transactionStatus: json['transaction_status'] as String?,
        transactionFor: json['transaction_for'] as String?,
        transactionType: json['transaction_type'] as String?,
        remarks: json['remarks'] as String?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
        user: json['user'] as String?,
      );
}
