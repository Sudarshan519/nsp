import 'package:flutter/foundation.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';

class UserDetailModel extends UserDetail {
  const UserDetailModel({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String mobile,
    @required String uuid,
    @required String avatar,
    @required int balance,
    @required int point,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          email: email,
          mobile: mobile,
          uuid: uuid,
          avatar: avatar,
          balance: balance,
          point: point,
        );

  factory UserDetailModel.fromJson(Map<String, dynamic> json) =>
      UserDetailModel(
        firstName: json["first_name"] as String,
        lastName: json["last_name"] as String,
        email: json["email"] as String,
        mobile: json["mobile"] as String,
        uuid: json["uuid"] as String,
        avatar: json["avatar"] as String,
        balance: json["balance"] as int,
        point: json["point"] as int,
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "mobile": mobile,
        "uuid": uuid,
        "avatar": avatar,
        "balance": balance,
        "point": point,
      };
}
