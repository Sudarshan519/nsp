import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/presentations/bloc/update_profile_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/balance_and_points.dart';
import 'package:wallet_app/ui/widgets/image_loader_view.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'profile_tab_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Palette.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: const _ProfilePage(),
    );
  }
}

class _ProfilePage extends StatelessWidget {
  const _ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loadingWithData: (success) => loadingPage(),
          loaded: (success) => profileBody(
            context,
            success.data.userDetail,
          ),
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
            return const SizedBox.shrink();
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
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget profileBody(BuildContext context, UserDetail? user) {
    if (user == null) {
      debugPrint(" Userdetail is null");
      return const SizedBox.shrink();
    }

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(child: _UserInfoWidget(user: user)),
          _ProfileTab(
            user: user,
          ),
        ],
      ),
    );
  }
}

class _UserInfoWidget extends StatelessWidget {
  final UserDetail user;
  const _UserInfoWidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isKycVerified = user.isKycVerified ?? false;

    return Column(
      children: [
        Container(
          width: double.maxFinite,
          color: Palette.primary,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  ImageLoaderWidget(
                    image: user.avatar ?? "",
                    height: 80,
                    width: 80,
                    cornerRadius: 40,
                  ),
                  Positioned(
                    bottom: -10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7.0, vertical: 2),
                      decoration: BoxDecoration(
                        color: Palette.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              isKycVerified
                                  ? "assets/images/profile/verified.svg"
                                  : "assets/images/profile/un-verified.svg",
                              height: 10,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              isKycVerified ? "Verified" : "Unverified",
                              style: TextStyle(
                                color:
                                    isKycVerified ? Colors.green : Colors.red,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "${user.firstName ?? ""} ${user.lastName ?? ""}",
                // "Siraj Ashikarisadasd",
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        BalanceAndPointWidget(
          user: user,
          showAddBalanceButton: false,
        ),
        const Padding(padding: EdgeInsets.only(bottom: 16)),
      ],
    );
  }
}

class _ProfileTab extends StatelessWidget {
  final UserDetail user;

  const _ProfileTab({
    Key? key,
    required this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateProfileBloc>()
        ..add(UpdateProfileEvent.setInitialState(user)),
      child: ProfileTabBarScreen(),
    );
  }
}
