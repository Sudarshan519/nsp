import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/auth/domain/usecase/set_mpin.dart';

part 'set_mpin_event.dart';
part 'set_mpin_state.dart';
part 'set_mpin_bloc.freezed.dart';

@injectable
class SetMpinBloc extends Bloc<SetMpinEvent, SetMpinState> {
  final SetMpin setMpin;
  SetMpinBloc(this.setMpin) : super(const _Initial());
  @override
  Stream<SetMpinState> mapEventToState(SetMpinEvent event) async* {
    yield* event.map(
      set: (e) async* {
        yield const _Loading();
        final result = await setMpin(e.params);
        yield result.fold(
            (fail) => _Failure(fail), (success) => const _Success());
      },
    );
  }
}
