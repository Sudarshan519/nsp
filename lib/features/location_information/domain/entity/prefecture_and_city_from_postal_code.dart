import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class PrefectureAndCityFromPostalCode extends Equatable {
  const PrefectureAndCityFromPostalCode({
    @required this.id,
    @required this.postalCode,
    @required this.prefectureJp,
    @required this.prefecture,
    @required this.cityJp,
    @required this.city,
    @required this.street,
    @required this.streetJp,
  });

  final int id;
  final String postalCode;
  final String prefectureJp;
  final String cityJp;
  final String prefecture;
  final String city;
  final String street;
  final String streetJp;

  @override
  List<Object> get props => [
        id,
        postalCode,
        prefectureJp,
        prefecture,
        cityJp,
        city,
        street,
      ];
}
