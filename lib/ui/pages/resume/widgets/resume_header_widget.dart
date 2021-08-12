import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_switch_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'image_edit_widget.dart';

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
            Future.delayed(Duration.zero, () {
              FlushbarHelper.createError(
                message: error.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            });
            return _resumeHeader(context, null);
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
            return _resumeHeader(context, failure.data.userDetail);
          },
        );
      },
    );
  }

  Widget _resumeHeader(BuildContext context, UserDetail? userDetail) {
    return Container(
      width: double.maxFinite,
      color: Palette.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageEditWidget(),
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
          _languageSwitchWidget(context),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget _languageSwitchWidget(BuildContext context) {
    return BlocBuilder<ResumeWatcherBloc, ResumeWatcherState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: context
                          .read<ResumeWatcherBloc>()
                          .state
                          .language
                          .toLowerCase() ==
                      "en"
                  ? 1.0
                  : 0.5,
              child: SvgPicture.asset(
                "assets/images/resume/flag-US.svg",
                height: 20.0,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            _languageSwitch(),
            const SizedBox(
              width: 5,
            ),
            Opacity(
              opacity: context
                          .read<ResumeWatcherBloc>()
                          .state
                          .language
                          .toLowerCase() ==
                      "jp"
                  ? 1.0
                  : 0.5,
              child: SvgPicture.asset(
                "assets/images/resume/flag-japan.svg",
                height: 20.0,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _languageSwitch() {
    return BlocBuilder<ResumeWatcherBloc, ResumeWatcherState>(
      builder: (context, state) {
        return CustomSwitch(
          onChanged: (value) {
            if (value) {
              context
                  .read<ResumeWatcherBloc>()
                  .add(const ResumeWatcherEvent.changeLanguage("jp"));
            } else {
              context
                  .read<ResumeWatcherBloc>()
                  .add(const ResumeWatcherEvent.changeLanguage("en"));
            }
          },
        );
      },
    );
  }
}
