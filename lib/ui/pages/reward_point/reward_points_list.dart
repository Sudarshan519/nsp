import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/reward_points/domain/entity/reward_point_item.dart';
import 'package:wallet_app/features/reward_points/presentation/reward_point/reward_point_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class RewardPointListPage extends StatelessWidget {
  const RewardPointListPage({Key? key}) : super(key: key);

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

            loadingWith: (data) => _RewardPointListView(
              items: data.rewardPointData.rewardPoints ?? [],
              isloading: true,
            ),
            loaded: (data) => _RewardPointListView(
                items: data.rewardPointData.rewardPoints ?? []),
            failure: (a) => loadingPage(), //  Text('failure'),
          );
        },
      ),
    );
  }
}

class _RewardPointListView extends StatelessWidget {
  _RewardPointListView({
    required this.items,
    this.isloading = false,
    Key? key,
  }) : super(key: key);
  final List<RewardPointItem> items;
  final bool isloading;

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ShadowBoxWidget(
      padding: const EdgeInsets.all(1),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: SingleChildScrollView(
        controller: _scrollController
          ..addListener(() {
            if (_scrollController.offset ==
                    _scrollController.position.maxScrollExtent &&
                !context.read<RewardPointBloc>().isFetching) {
              context
                  .read<RewardPointBloc>()
                  .add(const RewardPointEvent.fetchRewardPoints());
            }
          }),
        child: Column(
          children: [
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
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
            if (isloading)
              SizedBox(
                height: 70,
                child: loadingPage(),
              ),
          ],
        ),
      ),
    );
  }
}
