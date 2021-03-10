import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/data/model/japanese_manner_model.dart';
import 'package:wallet_app/features/home/data/model/services_model.dart';
import 'package:wallet_app/features/home/domain/entities/home_data.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/data/model/resume_model.dart';
import 'package:wallet_app/features/resume/domain/entities/resume.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/presentation/pages/home/constant/home_item_type.dart';
import 'package:wallet_app/presentation/pages/home/widgets/home_header.dart';
import 'package:wallet_app/presentation/pages/home/widgets/my_resume.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widgets/banner_widget.dart';
import 'widgets/build_resume.dart';
import 'widgets/home_service_widget.dart';
import 'widgets/japanese_manner_widget.dart';
import 'widgets/news/segmented_news_widget.dart';
import 'widgets/user_info_widget.dart';

class HomePage extends StatelessWidget {
  final Function(int) changeTabPage;

  const HomePage({
    Key key,
    @required this.changeTabPage,
  })  : assert(changeTabPage != null),
        super(key: key);

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
                    _homePageHeader(),
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

  Widget _homePageHeader() {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => const UserInfoWidget(user: null),
          loading: (_) => const UserInfoWidget(user: null),
          loadingWithData: (success) =>
              UserInfoWidget(user: success.data.userDetail),
          loaded: (success) => UserInfoWidget(user: success.data.userDetail),
          failure: (error) {
            FlushbarHelper.createError(
              message: error.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
            return const UserInfoWidget(user: null);
          },
          failureWithData: (failure) {
            FlushbarHelper.createError(
              message: failure.failure.map(
                noInternetConnection: (error) => AppConstants.noNetwork,
                serverError: (error) => error.message,
                invalidUser: (error) => AppConstants.someThingWentWrong,
              ),
            ).show(context);
            return _homePageBodyContent(
                context, failure.data.homeData, failure.data.userDetail);
          },
        );
      },
    );
  }

  Widget _homePageBody() {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) {
            // also load watcher for Resume bloc
            return loadingPage();
          },
          loadingWithData: (success) => _homePageBodyContent(
              context, success.data.homeData, success.data.userDetail),
          loaded: (success) => _homePageBodyContent(
              context, success.data.homeData, success.data.userDetail),
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
            return _homePageBodyContent(
                context, failure.data.homeData, failure.data.userDetail);
          },
        );
      },
    );
  }

  Widget _homePageBodyContent(
      BuildContext context, List data, UserDetail userDetail) {
    return ListView.builder(
      primary: false,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _listItemBuilder(context, data[index], userDetail);
      },
    );
  }

  Widget _listItemBuilder(
      BuildContext context, dynamic data, UserDetail userDetail) {
    final model = data as HomeData;
    final typeString = model.type;

    final type = _getHomeItemTypeString(typeString);

    switch (type) {
      case HomeItemType.resume:
        final data = model.data as Map<String, dynamic>;

        if (data["status"] as bool == true) {
          return buildResumeSection(context, data, userDetail);
        } else {
          context
              .read<ResumeWatcherBloc>()
              .add(const ResumeWatcherEvent.setResumeData(ResumeData()));
          return BuildResume(
            changeTabPage: changeTabPage,
          );
        }
        break;
      case HomeItemType.services:
        final data = List<ServicesModel>.from((model.data as Iterable)
            .map((x) => ServicesModel.fromJson(x as Map<String, dynamic>)));
        return HomeServiceWidget(
          services: data,
        );

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

  MyResumeWidget buildResumeSection(
    BuildContext context,
    Map<String, dynamic> data,
    UserDetail userDetail,
  ) {
    final map = data["data"] as Map<String, dynamic>;
    final resumeModel = ResumeDataModel.fromJson(map);

    if (resumeModel != null) {
      context
          .read<ResumeWatcherBloc>()
          .add(ResumeWatcherEvent.setResumeData(resumeModel));
    } else {
      context
          .read<ResumeWatcherBloc>()
          .add(const ResumeWatcherEvent.setResumeData(ResumeData()));
    }

    return MyResumeWidget(
      data: resumeModel,
      changeTabPage: changeTabPage,
    );
  }
}
