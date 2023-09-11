import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/splash/presentation/splash_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashBloc, SplashState>(
      listener: (BuildContext context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {
            context.router.replace(const TabBarRoute());
          },
          unauthenticated: (_) => context.router.replace(const LoginRoute()),
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
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              width: width * 0.5,
              child: SvgPicture.asset(
                "assets/images/splash/splash-logo.svg",
              ),
            ),
          ],
        );
      },
    );
  }
}
