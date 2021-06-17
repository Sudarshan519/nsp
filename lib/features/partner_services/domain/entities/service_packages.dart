import 'package:equatable/equatable.dart';

class ServicePackage extends Equatable {
  final int? id;
  final String? serviceId;
  final String? packageName;
  final String? description;
  final double? packagePrice;
  final bool? isPayable;
  final bool? isActive;
  final String? updatedBy;
  final String? createdAt;
  final String? updatedAt;

  const ServicePackage(
      {this.id,
      this.serviceId,
      this.packageName,
      this.description,
      this.packagePrice,
      this.isPayable,
      this.isActive,
      this.updatedBy,
      this.createdAt,
      this.updatedAt});

  @override
  List<Object> get props => [];
}
