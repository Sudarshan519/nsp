import 'dart:io';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as checker;
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:wallet_app/features/app_update/data/constant/constants.dart';
import 'package:wallet_app/features/app_update/presentation/app_update/app_update_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/main.dart';
import 'package:wallet_app/ui/widgets/pop_up/custom_dialog.dart';
import 'package:wallet_app/utils/config_reader.dart';

// ignore: avoid_classes_with_only_static_members
class UpdateService {
  static const playStoreUrl =
      "https://play.google.com/store/apps/details?id=nsp.platz.nitv.com";
  static const appStoreUrl =
      "https://apps.apple.com/jm/app/bnpj-buy-now-pay-japan/id1558970505";

  static void init() {
    final updateBloc = getIt<AppUpdateBloc>();
    final connectionStream =
        checker.InternetConnectionChecker().onStatusChange.listen((event) {
      if (event == checker.InternetConnectionStatus.connected) {
        updateBloc.add(const AppUpdateEvent.checkForUpdates());
      }
    });

    updateBloc.stream.listen((state) {
      state.map(
          initial: (e) {},
          loading: (e) {},
          loaded: (e) async {
            connectionStream.cancel();
            await Future.delayed(const Duration(seconds: 1));
            final data =
                Platform.isAndroid ? e.updateData.android : e.updateData.iOS;

            final isUnderMaintenance =
                data.updateAction == AppUpdateAction.under_maintenance;

            final context = appRouter.navigatorKey.currentContext;
            if (context == null) return;

            final canPop = data.updateAction == AppUpdateAction.no_action ||
                data.updateAction == AppUpdateAction.soft_update;
            final hasUpdate = _hasUpdate(data.latestVersion);

            //Showing dialog only if app [hasUpdate] or is stopped for maintenance
            if (hasUpdate || isUnderMaintenance) {
              showDialog(
                barrierDismissible: canPop,
                context: context,
                builder: (context) {
                  return WillPopScope(
                      onWillPop: () async {
                        return canPop;
                      },
                      child: CustomDialog(
                        message: data.updateMessage,
                        title: data.title,
                        showDismiss: canPop,
                        icon: Icons.system_update,
                        actionText: hasUpdate ? 'Update' : '',
                        onAction: () {
                          launcher.launch(
                              Platform.isAndroid ? playStoreUrl : appStoreUrl);
                        },
                      ));
                },
              );
            }
          },
          failure: (e) {});
    });
  }

  static bool _hasUpdate(String latestVersion) {
    final currentBuild = getIt<ConfigReader>().appVersion.split('+').last;
    final latestBuild = latestVersion.split('+').last;
    try {
      return int.parse(latestBuild) > int.parse(currentBuild);
    } catch (e) {
      return true;
    }
  }
}
