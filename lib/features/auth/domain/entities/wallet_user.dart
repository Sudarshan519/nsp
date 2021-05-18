import 'package:equatable/equatable.dart';

class WalletUser extends Equatable {
  final bool? status;
  final String? accessToken;
  final String? refreshToken;

  const WalletUser({
    required this.status,
    required this.accessToken,
    required this.refreshToken,
  });

  @override
  List<Object> get props => [];
}
