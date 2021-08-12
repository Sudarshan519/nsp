import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/utils/constant.dart';

import 'user_info_widget.dart';

class HomePageHeader extends StatelessWidget {
  const HomePageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => const UserInfoWidget(),
          loading: (_) => const UserInfoWidget(),
          loadingWithData: (success) =>
              UserInfoWidget(user: success.data.userDetail),
          loaded: (success) => UserInfoWidget(user: success.data.userDetail),
          failure: (error) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: error.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return const UserInfoWidget();
          },
          failureWithData: (failure) {
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: failure.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return UserInfoWidget(user: failure.data.userDetail);
          },
        );
      },
    );
  }
}

class HomeAppbarTitle extends StatelessWidget {
  const HomeAppbarTitle({Key? key}) : super(key: key);

  Widget title(String name) {
    return Text(
      name.isEmpty ? 'User' : name,
      style: TextStyle(
        color: Palette.white,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => title(''),
          loading: (_) => title(''),
          loadingWithData: (success) {
            final name =
                '${success.data.userDetail?.firstName ?? ""} ${success.data.userDetail?.lastName ?? ""}';
            return title(name);
          },
          loaded: (success) {
            final name =
                '${success.data.userDetail?.firstName ?? ""} ${success.data.userDetail?.lastName ?? ""}';

            return title(name);
          },
          failure: (error) => title(''),
          failureWithData: (failure) {
            final name =
                '${failure.data.userDetail?.firstName ?? ""} ${failure.data.userDetail?.lastName ?? ""}';

            return title(name);
          },
        );
      },
    );
  }
}
