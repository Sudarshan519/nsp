import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/features/ads/presentation/get_ads/ads_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/news/presentation/favourite_news/favourite_news_bloc.dart';
import 'package:wallet_app/features/news/presentation/latest_news/latest_news_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_for_you/news_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_genre/news_genre_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_preference/news_preference_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/splash/presentation/splash_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/main.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/utils/config_reader.dart';

class WalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SplashBloc>()
            ..add(
              const SplashEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<NewsBloc>()
            ..add(
              const NewsEvent.fetchNewsData(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<LatestNewsBloc>()
            ..add(
              const LatestNewsEvent.fetchNewsData(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<FavouriteNewsBloc>()
            ..add(
              const FavouriteNewsEvent.fetch(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<ResumeWatcherBloc>()
            ..add(const ResumeWatcherEvent.getResumeData()),
        ),
        BlocProvider(
          create: (_) => getIt<HomePageDataBloc>()
            ..add(
              const HomePageDataEvent.fetch(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<NewsGenreBloc>()
            ..add(
              const NewsGenreEvent.fetch(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<NewsPreferenceBloc>()
            ..add(
              const NewsPreferenceEvent.fetch(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<TransactionBloc>()
            ..add(const TransactionEvent.fetchTransactionData()),
        ),
        BlocProvider(
          create: (_) => getIt<GetBalanceBloc>()
            ..add(
              const GetBalanceEvent.fetchBalance(),
            ),
        ),
        BlocProvider(
          create: (_) => getIt<AdsBloc>()
            ..add(
              const AdsEvent.fetchAds(),
            ),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(
            navigatorObservers: () => [
                  AnalyticsService.getAnalyticsObserver(),
                ]),
        routeInformationParser: appRouter.defaultRouteParser(),
        title: 'Wallet',
        theme: ThemeData(
          primaryColor: Palette.primary,
          accentColor: Palette.accent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Montserrat',
        ),
        debugShowCheckedModeBanner: getIt<ConfigReader>().isDebugApp,
      ),
    );
  }
}
