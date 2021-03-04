import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class UserDetail extends Equatable {
  const UserDetail({
    @required this.firstName,
    @required this.lastName,
    @required this.email,
    @required this.mobile,
    @required this.uuid,
    @required this.avatar,
    @required this.balance,
    @required this.point,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String mobile;
  final String uuid;
  final String avatar;
  final int balance;
  final int point;

  @override
  List<Object> get props => [
        firstName,
        lastName,
        email,
        mobile,
        uuid,
        avatar,
        balance,
        point,
      ];
}
