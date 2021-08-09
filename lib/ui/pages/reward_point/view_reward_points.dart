import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_point_item.dart';
import 'package:wallet_app/features/reward_points/presentation/reward_point/reward_point_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/balance_and_points.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class RewardPointPage extends StatelessWidget {
  const RewardPointPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Reward Point Statement',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: BlocProvider(
        create: (_) => getIt<RewardPointBloc>()
          ..add(
            const RewardPointEvent.fetchRewardPoints(),
          ),
        child: BlocBuilder<RewardPointBloc, RewardPointState>(
          buildWhen: (previous, current) =>
              previous.hashCode != current.hashCode,
          builder: (context, state) {
            return state.map(
              loading: (a) => loadingPage(),
              loaded: (data) =>
                  _RewardPointListView(items: data.rewardPointData),
              failure: (a) => loadingPage(), //  Text('failure'),
            );
          },
        ),
      ),
    );
  }
}

class _RewardPointListView extends StatelessWidget {
  const _RewardPointListView({
    required this.items,
    Key? key,
  }) : super(key: key);
  final List<RewardPointItem> items;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const IgnorePointer(
              child: BalanceAndPointWidget(showAddBalanceButton: false)),
          const SizedBox(height: 5),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              final item = items[index];

              return ListTile(
                leading: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: Palette.primary,
                    ),
                    child: const SizedBox(
                      child: Icon(Icons.star, color: Colors.white),
                    )),
                title: Text(
                  item.moduleName ?? '',
                  textScaleFactor: 0.76,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  '''${DateTimeFormatter.formatDate(item.createdAt.toString())} - ${DateTimeFormatter.formatTime(item.createdAt.toString())}''',
                  textScaleFactor: 0.8,
                ),
                trailing: Text(
                  'Points: ${item.rewardPoint ?? 0}',
                  style: TextStyle(
                      fontWeight: FontWeight.w700, color: Palette.primary),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
