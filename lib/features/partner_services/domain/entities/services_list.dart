import 'package:equatable/equatable.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';

class PartnerServicesList extends Equatable {
  const PartnerServicesList({
    // this.count,
    // this.next,
    this.results,
  });

  // final int count;
  // final String next;
  final List<Services> results;

  @override
  List<Object> get props => [
        // count,
        // next,
        results,
      ];
}
