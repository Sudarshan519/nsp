import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/app_update/domain/entities/app_update.dart';
import 'package:wallet_app/features/app_update/domain/use_case/get_app_update.dart';

part 'app_update_event.dart';
part 'app_update_state.dart';
part 'app_update_bloc.freezed.dart';

@lazySingleton
class AppUpdateBloc extends Bloc<AppUpdateEvent, AppUpdateState> {
  final GetAppUpdate getAppUpdate;
  AppUpdateBloc(this.getAppUpdate) : super(const _Initial()) {
    on<_CheckForUpdates>((event, emit) {
      //TODO
      _checkForUpdate(emit);
    });
  }

  Future<void> _checkForUpdate(
    Emitter<AppUpdateState> emit,
  ) async {
    emit(const AppUpdateState.loading());
    final response = await getAppUpdate(NoParams());
    emit(response.fold((fail) => _Failure(fail), (data) => _Loaded(data)));
  }

  @override
  Stream<AppUpdateState> mapEventToState(AppUpdateEvent event) async* {
    yield* event.map(
      checkForUpdates: (e) async* {
        yield const _Loading();
        final response = await getAppUpdate(NoParams());
        yield response.fold((fail) => _Failure(fail), (data) => _Loaded(data));
      },
    );
  }
}
