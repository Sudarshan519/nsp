import 'dart:convert';

import 'package:wallet_app/features/home/domain/entities/home_response.dart';

import 'home_data_model.dart';
import 'user_detail_model.dart';

List<HomeResponseModel> homeResponseModelFromJson(String str) =>
    List<HomeResponseModel>.from((json.decode(str) as Iterable)
        .map((x) => HomeResponseModel.fromJson(x as Map<String, dynamic>)));

class HomeResponseModel extends HomeResponse {
  const HomeResponseModel({
    final UserDetailModel userDetail,
    final List<HomeDataModel> homeData,
  }) : super(
          userDetail: userDetail,
          homeData: homeData,
        );

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      HomeResponseModel(
        userDetail: json["user_detail"] == null
            ? null
            : UserDetailModel.fromJson(
                json["user_detail"] as Map<String, dynamic>),
        homeData: json["home_data"] == null
            ? null
            : List<HomeDataModel>.from((json["home_data"] as Iterable)
                .map((x) => HomeDataModel.fromJson(x as Map<String, dynamic>))),
      );
}
