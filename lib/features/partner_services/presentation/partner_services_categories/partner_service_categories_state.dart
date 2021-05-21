part of 'partner_service_categories_bloc.dart';

@freezed
class PartnerServiceCategoriesState with _$PartnerServiceCategoriesState {
  const factory PartnerServiceCategoriesState.initial() = _Initial;
  const factory PartnerServiceCategoriesState.loading() = _Loading;
  const factory PartnerServiceCategoriesState.loaded(
      List<ServicesCategory> categories) = _Loaded;
  const factory PartnerServiceCategoriesState.failure(ApiFailure failure) =
      _Failure;
}
