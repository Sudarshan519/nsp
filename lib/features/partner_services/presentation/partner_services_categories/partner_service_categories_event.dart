part of 'partner_service_categories_bloc.dart';

@freezed
abstract class PartnerServiceCategoriesEvent
    with _$PartnerServiceCategoriesEvent {
  const factory PartnerServiceCategoriesEvent.fetch() = _Fetch;
}
