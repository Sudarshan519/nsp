import 'package:equatable/equatable.dart';

class AcademicHistory extends Equatable {
  const AcademicHistory({
    this.id,
    this.jobSeekerId,
    this.institute,
    this.majorSubject,
    this.startYear,
    this.startMonth,
    this.completionYear,
    this.completionMonth,
    this.language,
    this.createdAt,
    this.updatedAt,
  });

  final int? id;
  final int? jobSeekerId;
  final String? institute;
  final String? majorSubject;
  final String? startYear;
  final String? startMonth;
  final String? completionYear;
  final String? completionMonth;
  final String? language;
  final String? createdAt;
  final String? updatedAt;

  @override
  List<Object> get props => [];
}
