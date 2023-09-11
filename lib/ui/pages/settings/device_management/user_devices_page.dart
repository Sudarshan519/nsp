import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/core/device_info/device_information_manager.dart';
import 'package:wallet_app/features/user_device/domain/entities/user_device.dart';
import 'package:wallet_app/features/user_device/presentation/get_user_devices/get_user_devices_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_confirmation.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

@RoutePage()
class UserDevicesListPage extends StatelessWidget {
  const UserDevicesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Device Management",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: BlocProvider(
          create: (context) => getIt<GetUserDevicesBloc>()
            ..add(const GetUserDevicesEvent.fetchDevices()),
          child: const _UserDevices()),
    );
  }
}

class _UserDevices extends StatelessWidget {
  const _UserDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget viewLoader(
      List<UserDevice> devices,
    ) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text(
                'Mobile devices that are logged into your account.',
                textScaleFactor: 0.86,
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: devices.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = devices[index];
                  final isCurrentDevice = DeviceInfoManager.device.toString() ==
                      item.deviceInfo.toString();
                  return Card(
                    child: ListTile(
                      leading: const Icon(Icons.phone_iphone),
                      title: Text(item.deviceInfo.name +
                          (isCurrentDevice ? ' (current)' : '')),
                      subtitle: Text(
                          'Last Login: ${item.lastLogin.isNotEmpty ? ('${DateTimeFormatter.formatDate(item.lastLogin)} - ${DateTimeFormatter.formatTime(item.lastLogin)}') : 'Unknown'}'),
                      trailing: isCurrentDevice
                          ? null
                          : InkWell(
                              onTap: () {
                                showDialog(
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (_) => PopUpConfirmation(
                                    message:
                                        'This will make the current device logout and stop sending notifications to it. Are you sure?',
                                    onConfirmed: () {
                                      context.read<GetUserDevicesBloc>().add(
                                          GetUserDevicesEvent.deleteDevice(
                                              item.id));
                                      context.popRoute();
                                    },
                                  ),
                                );
                              },
                              child: SvgPicture.asset(
                                  'assets/images/more/icon-logout.svg'),
                              // child: const CircleAvatar(
                              //   radius: 14,
                              //   backgroundColor: Colors.red,
                              //   child: Icon(
                              //     Icons.delete_outline_outlined,
                              //     color: Colors.white,
                              //     size: 20,
                              //   ),
                              // ),
                            ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
    }

    return BlocBuilder<GetUserDevicesBloc, GetUserDevicesState>(
      builder: (context, state) {
        return state.map(
            loading: (_) => loadingPage(),
            loaded: (data) {
              SchedulerBinding.instance?.addPostFrameCallback((_) {
                FlushbarHelper.createSuccess(message: data.message)
                    .show(context);
              });
              return viewLoader(data.device);
            },
            failure: (failure) {
              SchedulerBinding.instance?.addPostFrameCallback((_) {
                FlushbarHelper.createError(
                  message: failure.failure.map(
                    noInternetConnection: (error) => AppConstants.noNetwork,
                    serverError: (error) => error.message.isNotEmpty
                        ? error.message
                        : AppConstants.someThingWentWrong,
                    invalidUser: (error) => AppConstants.someThingWentWrong,
                  ),
                ).show(context);
              });
              return const Center(child: Text('Failed to load data'));
            },
            failureWithData: (failureWithData) {
              FlushbarHelper.createError(
                message: failureWithData.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message.isNotEmpty
                      ? error.message
                      : AppConstants.someThingWentWrong,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);

              return viewLoader(failureWithData.data);
            });
      },
    );
  }
}
