import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/usecase/get_wallet_user.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetWalletUser getWalletUser;
  SplashBloc({
    required this.getWalletUser,
  }) : super(const SplashState.initial()) {
    on<AuthCheckRequested>((event, emit) async {
      //TODO
      final userInfo = await getWalletUser(NoParams());
      emit(userInfo.fold(
        (_) => const SplashState.unauthenticated(),
        (_) => const SplashState.authenticated(),
      ));
    });
  }
  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userInfo = await getWalletUser(NoParams());
        yield userInfo.fold(
          (_) => const SplashState.unauthenticated(),
          (_) => const SplashState.authenticated(),
        );
      },
    );
  }
}
