import 'dart:convert';

List<HomeModel> homeModelFromJson(String str) =>
    List<HomeModel>.from((json.decode(str) as Iterable)
        .map((x) => HomeModel.fromJson(x as Map<String, dynamic>)));

class HomeModel {
  HomeModel({
    this.type,
    this.data,
  });

  String type;
  dynamic data;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
        type: json["type"] as String,
        data: json["data"],
      );
}
