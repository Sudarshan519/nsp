import 'package:equatable/equatable.dart';

class ServicesCategory extends Equatable {
  const ServicesCategory({
    required this.id,
    required this.categoryName,
  });

  final int? id;
  final String? categoryName;

  @override
  List<Object> get props => [
        id ?? 0,
        categoryName ?? '',
      ];
}
