import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/presentation/get_alerts/get_alerts_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'alert_list_widget.dart';

class AlertListPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAlertsBloc, GetAlertsState>(
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
                !context.read<GetAlertsBloc>().isFetching) {
              debugPrint("reached end");
              context.read<GetAlertsBloc>().add(
                    const GetAlertsEvent.paginate(),
                  );
            }
          },
        ),
      child: Column(
        children: [
          ListView.builder(
            primary: false,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: alerts.length,
            itemBuilder: (context, index) {
              return AlertWidget(
                alert: alerts[index],
              );
            },
          ),
          if (isLoading)
            SafeArea(
              child: SizedBox(
                height: 60,
                child: loadingPage(),
              ),
            ),
        ],
      ),
    );
  }
}
