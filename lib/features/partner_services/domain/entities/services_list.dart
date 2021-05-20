import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';

class PartnerServicesList extends Equatable {
  const PartnerServicesList({
    this.results,
  });

  final List<Services>? results;

  @override
  List<Object> get props => [];
}
