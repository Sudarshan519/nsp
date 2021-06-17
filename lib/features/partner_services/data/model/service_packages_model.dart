import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart';

class ServicePackagesModel extends ServicePackages {
  const ServicePackagesModel({
    required int? id,
    required String? serviceId,
    required String? packageName,
    required String? description,
    required double? packagePrice,
    required bool? isPayable,
    required bool? isActive,
    required String? updatedBy,
    required String? createdAt,
    required String? updatedAt,
  }) : super(
          id: id,
          serviceId: serviceId,
          packageName: packageName,
          description: description,
          packagePrice: packagePrice,
          isPayable: isPayable,
          isActive: isActive,
          updatedBy: updatedBy,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory ServicePackagesModel.fromJson(Map<String, dynamic> json) =>
      ServicePackagesModel(
        id: json['id'] as int,
        serviceId: json['service_id'] as String?,
        packageName: json['package_name'] as String?,
        description: json['description'] as String?,
        packagePrice: json['package_price'] as double?,
        isPayable: json['is_payable'] as bool?,
        isActive: json['is_active'] as bool?,
        updatedBy: json['updated_by'] as String?,
        createdAt: json['created_at'] as String?,
        updatedAt: json['updated_at'] as String?,
      );

  @override
  List<Object> get props => [];
}
