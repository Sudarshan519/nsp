import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/presentation/get_earthquakes/get_earthquakes_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'alert_list_widget.dart';

class EarthquakeListPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetEarthquakesBloc, GetEarthquakesState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loadingWithData: (data) => showList(
            context: context,
            alerts: data.alerts,
            isLoading: true,
          ),
          success: (success) =>
              showList(context: context, alerts: success.alerts),
          failure: (failure) => loadingPage(),
        );
      },
    );
  }

  Widget showList({
    required BuildContext context,
    required List<Alert> alerts,
    bool isLoading = false,
  }) {
    return SingleChildScrollView(
      controller: _scrollController
        ..addListener(
          () {
            if (_scrollController.offset ==
                    _scrollController.position.maxScrollExtent &&
                !context.read<GetEarthquakesBloc>().isFetching) {
              context.read<GetEarthquakesBloc>().add(
                    const GetEarthquakesEvent.paginate(),
                  );
            }
          },
        ),
      child: Column(
        children: [
          ListView.separated(
            primary: false,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: alerts.length,
            separatorBuilder: (context, index) => const Divider(
              height: 1,
            ),
            itemBuilder: (context, index) {
              return AlertWidget(
                alert: alerts[index],
              );
            },
          ),
          if (isLoading)
            SizedBox(
              height: 60,
              child: loadingPage(),
            ),
        ],
      ),
    );
  }
}
