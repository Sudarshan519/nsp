import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/home/domain/entities/home_response.dart';
import 'package:wallet_app/features/home/domain/usecases/get_home_page_data.dart';

part 'home_page_data_event.dart';
part 'home_page_data_state.dart';
part 'home_page_data_bloc.freezed.dart';

@lazySingleton
class HomePageDataBloc extends Bloc<HomePageDataEvent, HomePageDataState> {
  final GetHomePageData getHomePageData;
  HomeResponse? homeData;

  HomePageDataBloc({
    required this.getHomePageData,
  }) : super(const _Initial());

  @override
  Stream<HomePageDataState> mapEventToState(
    HomePageDataEvent event,
  ) async* {
    yield* event.map(
      fetch: (e) async* {
        yield* _mapFetchToEvent(e);
      },
      onSpanShotEvent: (e) async* {
        yield* _mapStreamsToEvent(e);
      },
      onCompletedEvent: (e) async* {
        yield* _mapOnDoneToEvent(e);
      },
    );
  }

  Stream<HomePageDataState> _mapFetchToEvent(_Fetch _fetch) async* {
    yield const HomePageDataState.loading();
    getHomePageData(NoParams()).listen((event) {
      add(_OnSpanShotEvent(event));
    }).onDone(() => _OnCompletedEvent);
  }

  Stream<HomePageDataState> _mapStreamsToEvent(
      _OnSpanShotEvent _onSpanShotEvent) async* {
    yield* (_onSpanShotEvent.event).fold(
      (failure) async* {
        yield homeData == null
            ? HomePageDataState.failure(failure)
            : HomePageDataState.failureWithData(failure, homeData!);
      },
      (data) async* {
        homeData = data;

        //adding values to firebase analytics
        final userID = homeData!.userDetail?.uuid ?? '';
        if (userID.isEmpty) {
          AnalyticsService.setUserId(userID);
          if (homeData!.userDetail != null) {
            final detail = homeData!.userDetail!;
            AnalyticsService.setUserVal(
                'name', '${detail.firstName ?? ''} ${detail.lastName ?? ''}');
            AnalyticsService.setUserVal('gender', detail.gender ?? '');
            AnalyticsService.setUserVal('email', detail.email ?? '');
            AnalyticsService.setUserVal(
                'is_kyc_verified', (detail.isKycVerified ?? false).toString());
            AnalyticsService.setUserVal('mobile', detail.mobile ?? '');
          }
        }
        yield HomePageDataState.loaded(homeData!);
      },
    );
  }

  Stream<HomePageDataState> _mapOnDoneToEvent(
      _OnCompletedEvent _onCompletedEvent) async* {
    if (homeData != null) {
      yield HomePageDataState.loaded(homeData!);
    }
  }
}
