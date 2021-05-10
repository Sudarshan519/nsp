import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/domain/entities/home_data.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_model.dart';
import 'package:wallet_app/features/news/presentation/news_for_you/news_bloc.dart';
import 'package:wallet_app/features/partner_services/data/model/services_model.dart';
import 'package:wallet_app/features/resume/data/model/resume_data_model.dart';
import 'package:wallet_app/ui/pages/home/constant/home_item_type.dart';
import 'package:wallet_app/ui/pages/home/widgets/home_header.dart';
import 'package:wallet_app/ui/pages/home/widgets/my_resume.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widgets/banner_widget.dart';
import 'widgets/build_resume.dart';
import 'widgets/home_page_header.dart';
import 'widgets/home_service_widget.dart';
import 'widgets/japanese_manner_widget.dart';
import 'widgets/news/segmented_news_widget.dart';

class HomePage extends StatelessWidget {
  final Function(int) changeTabPage;
  final Function(int) changeResumeTabPage;
  final ScrollController _scrollController = ScrollController();

  HomePage({
    Key key,
    @required this.changeTabPage,
    @required this.changeResumeTabPage,
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
              child: RefreshIndicator(
                onRefresh: () async {
                  context.read<HomePageDataBloc>().add(
                        const HomePageDataEvent.fetch(),
                      );
                  // await 2 sec for the loader to show
                  await Future.delayed(const Duration(seconds: 2), () {});
                },
                child: SingleChildScrollView(
                  controller: _scrollController
                    ..addListener(
                      () {
                        if (_scrollController.offset ==
                                _scrollController.position.maxScrollExtent &&
                            !context.read<NewsBloc>().isFetching) {
                          debugPrint("home screen reached end");
                          context.read<NewsBloc>().add(
                                const NewsEvent.paginateIfAvailable(),
                              );
                        }
                      },
                    ),
                  child: Column(
                    children: [
                      const HomePageHeader(),
                      _homePageBody(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Palette.white,
      //   onPressed: () {},
      //   child: SvgPicture.asset(
      //     "assets/images/home/chat.svg",
      //     height: 30.0,
      //   ),
      // ),
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

    return MyResumeWidget(
      userDetail: userDetail,
      data: resumeModel,
      changeTabPage: changeTabPage,
      changeResumeTabPage: changeResumeTabPage,
    );
  }
}
