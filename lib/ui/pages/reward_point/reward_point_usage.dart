import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:wallet_app/features/reward_points/presentation/reward_point/reward_point_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

class RewardPointUsage extends StatelessWidget {
  const RewardPointUsage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RewardPointBloc>()
        ..add(
          const RewardPointEvent.fetchRewardPoints(),
        ),
      child: BlocBuilder<RewardPointBloc, RewardPointState>(
        buildWhen: (previous, current) => previous.hashCode != current.hashCode,
        builder: (context, state) {
          return state.map(
            loading: (a) => loadingPage(),
            loadingWith: (a) => loadingPage(),
            loaded: (data) => ShadowBoxWidget(
              margin: const EdgeInsets.all(8),
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Html(
                    data: data.rewardPointData.usage,
                    onLinkTap: (link, _, __, ___) {
                      context.pushRoute(
                        AppWebViewRoute(url: link ?? '', title: ""),
                      );
                    },
                  ),
                ),
              ),
            ),
            failure: (a) => const Center(
              child: Text('Failed To load data!'),
            ),
          );
        },
      ),
    );
  }
}
