import 'dart:convert';
import 'package:wallet_app/features/profile/balance/domain/entities/user_balance.dart';

UserBalanceModel userBalanceModelFromJson(String str) =>
    UserBalanceModel.fromJson(json.decode(str) as Map<String, dynamic>);

String userBalanceModelToJson(UserBalanceModel data) =>
    json.encode(data.toJson());

class UserBalanceModel extends UserBalance {
  UserBalanceModel({
    required bool? status,
    required double? balance,
    required double? point,
  }) : super(
          status: status,
          balance: balance,
          point: point,
        );

  factory UserBalanceModel.fromJson(Map<String, dynamic> json) =>
      UserBalanceModel(
        status: json["status"] == null ? null : json["status"] as bool,
        balance: json["balance"] == null
            ? null
            : json["balance"] is int
                ? (json["balance"] as int).toDouble()
                : json["balance"] as double?,
        point: json["point"] == null
            ? null
            : json["point"] is int
                ? (json["point"] as int).toDouble()
                : json["point"] as double?,
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "balance": balance,
        "point": point,
      };
}
