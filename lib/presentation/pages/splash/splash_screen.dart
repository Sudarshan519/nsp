import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/splash/presentation/splash_bloc.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (BuildContext context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.tabBarScreen);
          },
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.loginPage),
        );
      },
      child: const Scaffold(
        body: _SplashScreenBody(),
      ),
    );
  }
}

class _SplashScreenBody extends StatelessWidget {
  const _SplashScreenBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                color: Palette.white,
              ),
            ],
          ),
        );
      },
    );
  }
}
