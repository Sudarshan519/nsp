import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/home/data/model/home_model.dart';
import 'package:wallet_app/features/home/data/model/japanese_manner_model.dart';
import 'package:wallet_app/features/home/data/model/resume/resume_model.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/presentation/pages/home/constant/home_item_type.dart';
import 'package:wallet_app/presentation/pages/home/widgets/home_header.dart';
import 'package:wallet_app/presentation/pages/home/widgets/my_resume.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widgets/banner_widget.dart';
import 'widgets/build_resume.dart';
import 'widgets/home_service_widget.dart';
import 'widgets/japanese_manner_widget.dart';
import 'widgets/segmented_news_widget.dart';
import 'widgets/user_info_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Palette.white,
        child: Column(
          children: [
            HomeHeaderWidget(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const UserInfoWidget(),
                    _homePageBody(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.white,
        onPressed: () {},
        child: SvgPicture.asset(
          "assets/images/home/chat.svg",
          height: 30.0,
        ),
      ),
    );
  }

  Widget _homePageBody() {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) => loadingPage(context),
          loadingWithData: (success) =>
              _homePageBodyContent(context, success.data),
          loaded: (success) => _homePageBodyContent(context, success.data),
          failure: (error) {
            FlushbarHelper.createError(
              message: error.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
            return const SizedBox.shrink();
          },
          failureWithData: (failure) {
            FlushbarHelper.createError(
              message: failure.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
            return _homePageBodyContent(context, failure.data);
          },
        );
      },
    );
  }

  Widget _homePageBodyContent(BuildContext context, List data) {
    return ListView.builder(
      primary: false,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _listItemBuilder(
          context,
          data[index],
        );
      },
    );
  }

  Widget _listItemBuilder(BuildContext context, dynamic data) {
    final model = data as HomeModel;
    final typeString = model.type;

    final type = _getHomeItemTypeString(typeString);

    switch (type) {
      case HomeItemType.resume:
        final data = model.data as Map<String, dynamic>;

        if (data["status"] as bool == true) {
          final map = data["data"] as Map<String, dynamic>;
          final resumeModel = ResumeDataModel.fromJson(map);
          return MyResumeWidget(data: resumeModel);
        } else {
          return const BuildResume();
        }
        break;
      case HomeItemType.services:
        return const HomeServiceWidget();

      case HomeItemType.jp_manners:
        final data = List<JapaneseMannerModel>.from((model.data as Iterable)
            .map((x) =>
                JapaneseMannerModel.fromJson(x as Map<String, dynamic>)));
        return JapaneseMannerWidget(
          data: data ?? [],
        );

      case HomeItemType.banner:
        return const BannerWidget();

      case HomeItemType.news:
        return const SegmentedNewViewWidget();

      case HomeItemType.disaster_alert:
        return const SizedBox.shrink();
      default:
        return const SizedBox.shrink();
    }
  }

  HomeItemType _getHomeItemTypeString(String type) {
    final _type = 'HomeItemType.$type';
    return HomeItemType.values
        .firstWhere((f) => f.toString() == _type, orElse: () => null);
  }
}
