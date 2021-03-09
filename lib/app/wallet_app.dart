import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/news/presentation/news_list/news_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_academic_info/actor/update_academic_info_actor_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_academic_info/watcher/update_academic_info_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_personal_info/actor/update_personal_info_actor_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_personal_info/watcher/update_personal_info_watcher_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/actor/update_work_info_actor_bloc.dart';
import 'package:wallet_app/features/resume/presentation/update_work_info/watcher/update_work_info_watcher_bloc.dart';
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
          create: (context) => getIt<UpdatePersonalInfoWatcherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UpdatePersonalInfoActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UpdateAddressInfoActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UpdateAcademicInfoWatcherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UpdateAcademicInfoActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UpdateWorkInfoWatcherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UpdateWorkInfoActorBloc>(),
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
