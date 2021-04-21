import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/ui/pages/home/widgets/balance_and_points.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/ui/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class ProfilePage extends StatelessWidget {
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
      body: Container(
        color: Palette.white,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _ProfilePageHeader(),
                    _UserInfoUpdate(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfilePageHeader extends StatelessWidget {
  const _ProfilePageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => const _UserInfoWidget(user: null),
          loading: (_) => const _UserInfoWidget(user: null),
          loadingWithData: (success) =>
              _UserInfoWidget(user: success.data.userDetail),
          loaded: (success) => _UserInfoWidget(user: success.data.userDetail),
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
            return const _UserInfoWidget(user: null);
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
            return _UserInfoWidget(user: failure.data.userDetail);
          },
        );
      },
    );
  }
}

class _UserInfoUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShadowBoxWidget(
      child: Column(
        children: [
          TextWidetWithLabelAndChild(
            title: "First Name",
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Palette.dividerColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InputTextWidget(
                hintText: "First Name",
                textInputType: TextInputType.name,
                value: "",
                isEnable: false,
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextWidetWithLabelAndChild(
            title: "Last Name",
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Palette.dividerColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InputTextWidget(
                hintText: "Last Name",
                textInputType: TextInputType.name,
                value: "",
                isEnable: false,
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextWidetWithLabelAndChild(
            title: "Profession",
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Palette.dividerColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InputTextWidget(
                hintText: "Profession",
                textInputType: TextInputType.name,
                value: "",
                isEnable: false,
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextWidetWithLabelAndChild(
            title: "Occupation",
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Palette.dividerColor.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: InputTextWidget(
                hintText: "Occupation",
                textInputType: TextInputType.name,
                value: "",
                isEnable: false,
                onChanged: (value) {},
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 50,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Palette.primaryButtonColor,
            ),
            child: Center(
              child: Text(
                "Edit",
                style: TextStyle(
                  color: Palette.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _UserInfoWidget extends StatelessWidget {
  final UserDetail user;
  const _UserInfoWidget({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              _userImage(user?.avatar ?? ""),
              const SizedBox(
                height: 5,
              ),
              Text(
                "${user?.firstName ?? ""} ${user?.lastName ?? ""}",
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
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     SvgPicture.asset(
              //       "assets/images/resume/email-icon.svg",
              //       color: Palette.white,
              //       height: 12.0,
              //     ),
              //     const SizedBox(width: 5),
              //     Text(
              //       user?.email ?? "",
              //       style: TextStyle(
              //         color: Palette.white,
              //         fontSize: 12,
              //         fontWeight: FontWeight.w500,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        BalanceAndPointWidget(
          user: user,
        ),
        const Padding(padding: EdgeInsets.only(bottom: 16)),
      ],
    );
  }
}

Widget _userImage(String image) {
  if (image.isEmpty) {
    return SizedBox(
      width: 60,
      height: 60,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          'assets/images/navigation_bar/u1.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  return SizedBox(
    width: 60,
    height: 60,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Image.network(
        image,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child,
            ImageChunkEvent loadingProgress) {
          if (loadingProgress == null) return child;
          return Container(
            color: Palette.primaryBackground,
            height: 36,
            child: Center(
              child: CircularProgressIndicator(
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes
                    : null,
              ),
            ),
          );
        },
      ),
    ),
  );
}
