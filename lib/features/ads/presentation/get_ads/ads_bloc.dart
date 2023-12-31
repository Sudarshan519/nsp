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
  AdsBloc(this.getAds, this.adsDataSrc) : super(const _Initial()) {
    on<_RefreshAd>((event, emit) async {
      if (!_isRefreshing) {
        _isRefreshing = true;

        await Future.delayed(Duration(seconds: event.seconds));

        currentIndex =
            (currentIndex + 1 == adList.length) ? 0 : currentIndex + 1;
        _isRefreshing = false;
        emit(_Loaded(adList[currentIndex]));
      }
    });
    on<_HideAds>((event, emit) {
      emit(const _Hidden());
    });
    on<_FetchAds>((event, emit) async {
      emit(const _Loading());
      final result = await getAds(NoParams());
      emit(result.fold(
        (failure) => _Failure(failure),
        (ads) {
          if (ads.admob != null && (ads.admob?.banner?.status ?? false)) {
            adList.add(ads.admob!);
          }
          if (ads.facebookAd != null &&
              (ads.facebookAd?.overlay?.status ?? false)) {
            adList.add(ads.facebookAd!);
          }

          adList.sort((a, b) => a.getPriority().compareTo(b.getPriority()));

          if (adList.isEmpty) {
            return const _Hidden();
          } else {
            return _Loaded(adList.first);
          }
        },
      ));
    });
  }
  List<AdContract> adList = [];
  int currentIndex = 0;
  bool _isRefreshing = false;

  @override
  Stream<AdsState> mapEventToState(
    AdsEvent event,
  ) async* {
    yield* event.map(fetchAds: (e) async* {
      yield const _Loading();
      final result = await getAds(NoParams());
      yield result.fold(
        (failure) => _Failure(failure),
        (ads) {
          if (ads.admob != null && (ads.admob?.banner?.status ?? false)) {
            adList.add(ads.admob!);
          }
          if (ads.facebookAd != null &&
              (ads.facebookAd?.overlay?.status ?? false)) {
            adList.add(ads.facebookAd!);
          }

          adList.sort((a, b) => a.getPriority().compareTo(b.getPriority()));

          if (adList.isEmpty) {
            return const _Hidden();
          } else {
            return _Loaded(adList.first);
          }
        },
      );
    }, hideAds: (e) async* {
      yield const _Hidden();
    }, refreshAd: (e) async* {
      if (!_isRefreshing) {
        _isRefreshing = true;

        await Future.delayed(Duration(seconds: e.seconds));

        currentIndex =
            (currentIndex + 1 == adList.length) ? 0 : currentIndex + 1;

        yield _Loaded(adList[currentIndex]);
        _isRefreshing = false;
      }
    });
  }
}
