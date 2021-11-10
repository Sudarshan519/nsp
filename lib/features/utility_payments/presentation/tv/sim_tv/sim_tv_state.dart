part of 'sim_tv_bloc.dart';

@freezed
class SimTvState with _$SimTvState {
  const factory SimTvState({
    required Key key,
    required String customerId,
    required String amount,
    required String productId,
    required bool isSubmitting,
    required Option<Either<ApiFailure, Unit>> failureOrSuccessOption,
  }) = _SimTvState;

  factory SimTvState.initial() => SimTvState(
        customerId: '',
        isSubmitting: false,
        productId: '',
        amount: '',
        failureOrSuccessOption: none(),
        key: UniqueKey(),
      );
}
