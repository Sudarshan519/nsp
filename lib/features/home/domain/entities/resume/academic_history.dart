import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class AcademicHistory extends Equatable {
  const AcademicHistory({
    @required this.id,
    @required this.jobSeekerId,
    @required this.institute,
    @required this.majorSubject,
    @required this.startYear,
    @required this.startMonth,
    @required this.completionYear,
    @required this.completionMonth,
    @required this.language,
    @required this.createdAt,
    @required this.updatedAt,
  });

  final int id;
  final int jobSeekerId;
  final String institute;
  final String majorSubject;
  final String startYear;
  final String startMonth;
  final String completionYear;
  final String completionMonth;
  final String language;
  final String createdAt;
  final String updatedAt;

  @override
  List<Object> get props => [id, jobSeekerId, institute];
}
