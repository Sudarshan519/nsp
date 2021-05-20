import 'package:equatable/equatable.dart';

class QualificationHistory extends Equatable {
  const QualificationHistory({
    this.id,
    this.jobSeekerId,
    this.qualificationName,
    this.certifiedYear,
    this.certifiedMonth,
    this.language,
    this.institute,
    this.startYear,
    this.endYear,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;
  final int? jobSeekerId;
  final String? qualificationName;
  final String? certifiedYear;
  final String? certifiedMonth;
  final String? language;
  final String? institute;
  final String? startYear;
  final String? endYear;
  final String? createdAt;
  final String? updatedAt;

  @override
  List<Object> get props => [];
}
