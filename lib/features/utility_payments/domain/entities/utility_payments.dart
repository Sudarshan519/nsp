import 'package:equatable/equatable.dart';

class UtilityPayment extends Equatable {
  final int? id;
  final String? name;
  final String? image;
  final double? cashbackPer;
  final double? rewardPoint;
  final bool? isActive;
  final String? createdAt;
  final String? updatedAt;

  const UtilityPayment(
      {required this.id,
      required this.name,
      required this.image,
      required this.cashbackPer,
      required this.rewardPoint,
      required this.isActive,
      required this.createdAt,
      required this.updatedAt});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
