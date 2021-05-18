import 'package:equatable/equatable.dart';

class Alert extends Equatable {
  const Alert({
    required this.label,
    required this.advisoryTitle,
    required this.code,
    required this.depthTitle,
    required this.depthValue,
    required this.epicenterTitle,
    required this.epicenterValue,
    required this.isCancel,
    required this.magnitudeTitle,
    required this.magnitudeValue,
    required this.majorWarningTitle,
    required this.maxTitle,
    required this.maxValue,
    required this.occurredTitle,
    required this.occurredValue,
    required this.tsunamiMessage,
    required this.warningTitle,
    required this.lat,
    required this.lon,
    required this.levelText,
    required this.levelTitle,
    required this.levelValue,
    required this.typeTitle,
    required this.typeValue,
    required this.volcanoCode,
    required this.volcanoLatitude,
    required this.volcanoLongtitude,
    required this.volcanoNameTitle,
    required this.volcanoNameValue,
  });

  final String? label;
  final String? advisoryTitle;
  final String? code;
  final String? depthTitle;
  final String? depthValue;
  final String? epicenterTitle;
  final String? epicenterValue;
  final int? isCancel;
  final String? magnitudeTitle;
  final double? magnitudeValue;
  final String? majorWarningTitle;
  final String? maxTitle;
  final String? maxValue;
  final String? occurredTitle;
  final String? occurredValue;
  final String? tsunamiMessage;
  final String? warningTitle;
  final double? lat;
  final double? lon;
  final String? levelText;
  final String? levelTitle;
  final String? levelValue;
  final String? typeTitle;
  final String? typeValue;
  final String? volcanoCode;
  final double? volcanoLatitude;
  final double? volcanoLongtitude;
  final String? volcanoNameTitle;
  final String? volcanoNameValue;

  @override
  List<Object> get props => [];
}
