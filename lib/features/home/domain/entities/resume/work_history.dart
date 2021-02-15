import 'package:equatable/equatable.dart';

class WorkHistory extends Equatable {
  const WorkHistory({
    this.id,
    this.jobSeekerId,
    this.companyName,
    this.companyType,
    this.startYear,
    this.startMonth,
    this.endYear,
    this.endMonth,
    this.description,
    this.language,
    this.createdAt,
    this.updatedAt,
  });

  final int id;
  final int jobSeekerId;
  final String companyName;
  final String companyType;
  final String startYear;
  final String startMonth;
  final String endYear;
  final String endMonth;
  final String description;
  final String language;
  final String createdAt;
  final String updatedAt;

  @override
  List<Object> get props => [
        id,
        jobSeekerId,
        companyName,
        companyType,
      ];
}
