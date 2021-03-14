import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_list/news_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/features/splash/presentation/splash_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart' as router;
import 'package:flutter/material.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
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
          create: (context) => getIt<ResumeWatcherBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<HomePageDataBloc>()
            ..add(
              const HomePageDataEvent.fetch(),
            ),
        ),
      ],
      child: MaterialApp(
        title: 'Wallet',
        theme: ThemeData(
          primaryColor: Palette.primary,
          accentColor: Palette.accent,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Montserrat',
        ),
        debugShowCheckedModeBanner: getIt<ConfigReader>().isDebugApp,
        builder: ExtendedNavigator(
          router: router.Router(),
        ),
      ),
    );
  }
}
