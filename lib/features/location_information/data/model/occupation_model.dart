import 'dart:convert';

Occupation occupationFromJson(String str) =>
    Occupation.fromJson(json.decode(str) as Map<String, dynamic>);

String occupationToJson(Occupation data) => json.encode(data.toJson());

class Occupation {
  Occupation({
    this.status,
    this.occupation,
  });

  bool status;
  List<String> occupation;

  factory Occupation.fromJson(Map<String, dynamic> json) => Occupation(
        status: json["status"] as bool,
        occupation:
            List<String>.from((json["occupation"] as Iterable).map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "occupation": List<dynamic>.from(occupation.map((x) => x)),
      };
}
