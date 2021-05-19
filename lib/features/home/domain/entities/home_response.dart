import 'package:equatable/equatable.dart';

import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';

import 'home_data.dart';

class HomeResponse extends Equatable {
  const HomeResponse({
    required this.userDetail,
    required this.homeData,
  });

  final UserDetail? userDetail;
  final List<HomeData>? homeData;

  @override
  List<Object> get props => [];
}
