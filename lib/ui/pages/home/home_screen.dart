import 'dart:convert';
import 'dart:developer';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/ads/presentation/get_ads/ads_bloc.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/data/model/remit_rate_mode.dart';
import 'package:wallet_app/features/home/domain/entities/home_data.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/japanese_manners/data/model/japanese_manner_model.dart';
import 'package:wallet_app/features/partner_services/data/model/services_model.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/resume/data/model/resume_data_model.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/constant/home_item_type.dart';
import 'package:wallet_app/ui/pages/home/home_appbar.dart';
import 'package:wallet_app/ui/pages/home/widgets/kyc_update_prompt.dart';
import 'package:wallet_app/ui/pages/home/widgets/my_resume.dart';
import 'package:wallet_app/ui/pages/utility_payment/utility_payment.dart';
import 'package:wallet_app/ui/widgets/auth/auth_widgets.dart';
import 'package:wallet_app/ui/widgets/error_widgets.dart';
import 'package:wallet_app/ui/widgets/wallet_ad/wallet_ad_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'widgets/banner_widget.dart';
import 'widgets/build_resume.dart';
import 'widgets/home_page_header.dart';
import 'widgets/home_service_widget.dart';
import 'widgets/japanese_manner_widget.dart';
import 'widgets/news/segmented_news_widget.dart';
import 'widgets/remit_rate/remit_rate_widget.dart';

class HomePage extends StatelessWidget {
  final Function(int) changeTabPage;
  final Function(int) changeResumeTabPage;
  final Function(int) changeNewsTabPage;
  final ScrollController scrollController = ScrollController();

  HomePage({
    super.key,
    required this.changeTabPage,
    required this.changeResumeTabPage,
    required this.changeNewsTabPage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(
        scrollController: scrollController,
        key: UniqueKey(),
      ),
      body: _homePageBody(context),
    );
  }

  Widget _homePageBody(BuildContext context) {
    return BlocBuilder<HomePageDataBloc, HomePageDataState>(
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        return state.map(
          initial: (_) => const SizedBox.shrink(),
          loading: (_) {
            // also load watcher for Resume bloc
            return loadingPage();
          },
          loadingWithData: (success) => _homePageSilver(
            context,
            success.data.homeData,
            success.data.userDetail,
          ),
          loaded: (success) {
            final isMpinSet = success.data.userDetail?.isMpinSet ?? false;
            if (!isMpinSet) {
              // AuthWidgets.showSetMpinPrompt();
            }
            return _homePageSilver(
                context, success.data.homeData, success.data.userDetail);
          },
          failure: (error) {
            Future.delayed(
              Duration.zero,
              () {
                FlushbarHelper.createError(
                  message: error.failure.map(
                    noInternetConnection: (error) => AppConstants.noNetwork,
                    serverError: (error) => error.message,
                    invalidUser: (error) => AppConstants.someThingWentWrong,
                  ),
                ).show(context);
              },
            );

            final onrefreshFunc = () {
              context.read<HomePageDataBloc>().add(
                    const HomePageDataEvent.fetch(),
                  );
              getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());
              getIt<AdsBloc>().add(
                const AdsEvent.fetchAds(),
              );
              getIt<TransactionBloc>()
                  .add(const TransactionEvent.fetchTransactionData());
            };
            return error.failure.map(
              serverError: (error) => errorView(
                  onRefresh: () => onrefreshFunc(),
                  errorType: ErrorType.server_error),
              invalidUser: (error) => errorView(
                  onRefresh: () => onrefreshFunc(), errorType: ErrorType.other),
              noInternetConnection: (error) => errorView(
                  onRefresh: () => onrefreshFunc(),
                  errorType: ErrorType.no_internet),
            );
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
            return _homePageSilver(
                context, failure.data.homeData, failure.data.userDetail);
          },
        );
      },
    );
  }

  Widget _homePageSilver(
      BuildContext context, List? data, UserDetail? userDetail) {
    final height = MediaQuery.of(context).size.height * 0.09;

    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomePageDataBloc>().add(
              const HomePageDataEvent.fetch(),
            );
        getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());
        getIt<AdsBloc>().add(
          const AdsEvent.fetchAds(),
        );
        // await 2 sec for the loader to show
        await Future.delayed(const Duration(seconds: 2), () {});
      },
      child: Stack(
        children: [
          CustomScrollView(
            controller: scrollController,
            slivers: [
              const SliverToBoxAdapter(child: HomePageHeader()),

              //if user kyc is not verified, showing a prompt widget
              if (!(userDetail?.isKycVerified ?? false))
                kycPromptWidget(context),
              _homePageBodyContent(context, data, userDetail),

              SegmentedNewsViewWidget(
                key: UniqueKey(),
                changeTabPage: changeTabPage,
                changeNewsTabPage: changeNewsTabPage,
              ),
              SliverToBoxAdapter(
                  child: SizedBox(
                height: height,
              )),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: WalletAdWidget(
              height: height,
            ),
          )
        ],
      ),
    );
  }

  Widget _homePageBodyContent(
      BuildContext context, List? data, UserDetail? userDetail) {
    if (data == null || data.isEmpty) {
      debugPrint(" data is null or empty");
      return const SizedBox.shrink();
    }

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return _listItemBuilder(context, data[index], userDetail);
        },
        childCount: data.length,
      ),
    );
  }

  Widget _listItemBuilder(
      BuildContext context, dynamic data, UserDetail? userDetail) {
    final model = data as HomeData;
    final typeString = model.type ?? '';

    final type = getHomeItemTypeString(typeString);

    switch (type) {
      case HomeItemType.utility_payments:
        log(jsonEncode(model.data));
        final data = List<UtilityPaymentsModel>.from((model.data as Iterable)
            .map((x) =>
                UtilityPaymentsModel.fromJson(x as Map<String, dynamic>)));

        if (data.isNotEmpty) {
          return UtilityPamentWidget(
            paymentData: data,
            onViewLess: () {
              scrollController.animateTo(
                0.0,
                curve: Curves.easeOut,
                duration: const Duration(milliseconds: 1),
              );
            },
          );
        }

        return const SizedBox.shrink();

      case HomeItemType.remit_service:
        final data = List<RemitRateModel>.from((model.data as Iterable)
            .map((x) => RemitRateModel.fromJson(x as Map<String, dynamic>)));

        if (data.isNotEmpty) {
          return RemitRateWidget(
            remitRates: data,
          );
        }
        return const SizedBox.shrink();
      case HomeItemType.resume:
        final data = model.data as Map<String, dynamic>;

        if (data["status"] as bool == true) {
          return buildResumeSection(context, data, userDetail);
        } else {
          return BuildResume(
            changeTabPage: changeTabPage,
          );
        }
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
          data: data,
        );

      case HomeItemType.ad_banner:
        try {
          final banner = model.data.first["image"].toString();
          return BannerWidget(
            bannerUrl: banner,
          );
        } catch (e) {
          return const SizedBox();
        }

      // case HomeItemType.news:
      //   return SegmentedNewViewWidget(
      //     key: UniqueKey(),
      //     changeTabPage: changeTabPage,
      //     changeNewsTabPage: changeNewsTabPage,
      //   );

      case HomeItemType.disaster_alert:
        return const SizedBox.shrink();
      default:
        return const SizedBox.shrink();
    }
  }

  Widget buildResumeSection(
    BuildContext context,
    Map<String, dynamic> data,
    UserDetail? userDetail,
  ) {
    final map = data["data"] as Map<String, dynamic>;
    final resumeModel = ResumeDataModel.fromJson(map);

    if (userDetail == null) {
      debugPrint("User Detail is null");
      return const SizedBox.shrink();
    }

    return MyResumeWidget(
      userDetail: userDetail,
      data: resumeModel,
      changeTabPage: changeTabPage,
      changeResumeTabPage: changeResumeTabPage,
    );
  }
}
