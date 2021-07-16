import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/ads/data/data_source/ads_remote_datasource.dart';
import 'package:wallet_app/features/ads/domain/enity/ad.dart';
import 'package:wallet_app/features/ads/domain/use_case/get_ads.dart';

part 'ads_event.dart';
part 'ads_state.dart';
part 'ads_bloc.freezed.dart';

@injectable
class AdsBloc extends Bloc<AdsEvent, AdsState> {
  final GetAds getAds;
  final AdsRemoteDataSource adsDataSrc;
  AdsBloc(this.getAds, this.adsDataSrc) : super(const _Initial());

  @override
  Stream<AdsState> mapEventToState(
    AdsEvent event,
  ) async* {
    yield* event.map(fetchAds: (e) async* {
      print("===fetching ads====");
      yield const _Loading();
      final result = await getAds(NoParams());
        yield result.fold(
          (failure) => _Failure(failure),
          (ads) => _Loaded(ads),
        );

    });
  }
}
