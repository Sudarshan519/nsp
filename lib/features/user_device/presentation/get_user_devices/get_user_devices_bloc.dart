import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/user_device/domain/entities/user_device.dart';
import 'package:wallet_app/features/user_device/domain/use_case/delete_user_device.dart';
import 'package:wallet_app/features/user_device/domain/use_case/get_user_devices.dart';

part 'get_user_devices_event.dart';
part 'get_user_devices_state.dart';
part 'get_user_devices_bloc.freezed.dart';

@injectable
class GetUserDevicesBloc
    extends Bloc<GetUserDevicesEvent, GetUserDevicesState> {
  GetUserDevicesBloc(this.getUserDevices, this.deleteDevice)
      : super(const _Loading());
  final GetUserDevices getUserDevices;
  final DeleteDevice deleteDevice;
  List<UserDevice> _devices = [];

  @override
  Stream<GetUserDevicesState> mapEventToState(
    GetUserDevicesEvent event,
  ) async* {
    yield* event.map(
      fetchDevices: (e) async* {
        yield const _Loading();
        final response = await getUserDevices(NoParams());
        yield response.fold(
          (fail) => _Failure(fail),
          (data) {
            _devices = data;
            return _Loaded(data, 'User devices loaded Successfully!');
          },
        );
      },
      deleteDevice: (e) async* {
        yield const _Loading();
        final response = await deleteDevice(e.id);
        yield response.fold(
          (fail) => _FailureWithData(fail, _devices),
          (data) {
            _devices.removeWhere((element) => element.id == e.id);
            return _Loaded(_devices, 'Device deleted Successfully!');
          },
        );
      },
    );
  }
}
