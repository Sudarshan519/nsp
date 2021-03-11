import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/presentation/widgets/textFieldWidgets/custom_switch_widget.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class ResumeHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => _resumeHeader(context, null),
          loading: (_) => _resumeHeader(context, null),
          loadingWithData: (success) =>
              _resumeHeader(context, success.data.userDetail),
          loaded: (success) => _resumeHeader(context, success.data.userDetail),
          failure: (error) {
            FlushbarHelper.createError(
              message: error.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
            return _resumeHeader(context, null);
          },
          failureWithData: (failure) {
            FlushbarHelper.createError(
              message: failure.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
            return _resumeHeader(context, failure.data.userDetail);
          },
        );
      },
    );
  }

  Widget _resumeHeader(BuildContext context, UserDetail userDetail) {
    return Container(
      width: double.maxFinite,
      color: Palette.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              const CircleAvatar(
                radius: 41,
                backgroundImage: AssetImage(
                  'assets/images/navigation_bar/u1.png',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 27,
                  width: 27,
                  padding: const EdgeInsets.all(7.0),
                  decoration: BoxDecoration(
                    color: Palette.white,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: SvgPicture.asset(
                    "assets/images/resume/edit.svg",
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "${userDetail?.firstName ?? ""} ${userDetail?.lastName ?? ""}",
            style: TextStyle(
              color: Palette.white,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/resume/flag-US.svg",
                height: 20.0,
              ),
              const SizedBox(
                width: 5,
              ),
              const CustomSwitch(),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset(
                "assets/images/resume/flag-japan.svg",
                height: 20.0,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
