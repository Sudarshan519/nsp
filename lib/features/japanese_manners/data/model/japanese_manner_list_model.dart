import 'dart:convert';

import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_model.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner_list.dart';

JapaneseMannerListModel japaneseMannerListFromJson(String str) =>
    JapaneseMannerListModel.fromJson(json.decode(str) as Map<String, dynamic>);

class JapaneseMannerListModel extends JapaneseMannerList {
  const JapaneseMannerListModel({
    // final int count,
    // final String next,
    final List<JapaneseMannerModel> results,
  }) : super(
          // count: count,
          // next: next,
          results: results,
        );

  factory JapaneseMannerListModel.fromJson(Map<String, dynamic> json) =>
      JapaneseMannerListModel(
        // count: json["count"] as int,
        // next: json["next"] as String,
        results: List<JapaneseMannerModel>.from((json["jp_manner"] as Iterable)
            .map((x) =>
                JapaneseMannerModel.fromJson(x as Map<String, dynamic>))),
      );
}
