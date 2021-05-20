import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/presentation/get_volcanoes/get_volcanoes_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'alert_list_widget.dart';

class VolcanoListPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetVolcanoesBloc, GetVolcanoesState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          loadingWithData: (data) => showList(
            context: context,
            alerts: data.alerts,
            isLoading: true,
          ),
          success: (success) => showList(
            context: context,
            alerts: success.alerts,
            isLoading: false,
          ),
          failure: (failure) => loadingPage(),
        );
      },
    );
  }

  Widget showList({
    required BuildContext context,
    required List<Alert> alerts,
    required bool isLoading,
  }) {
    print(isLoading);
    return SingleChildScrollView(
      controller: _scrollController
        ..addListener(
          () {
            if (_scrollController.offset ==
                    _scrollController.position.maxScrollExtent &&
                !context.read<GetVolcanoesBloc>().isFetching) {
              debugPrint("reached end");
              context.read<GetVolcanoesBloc>().add(
                    const GetVolcanoesEvent.paginate(),
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
            SizedBox(
              height: 70,
              child: loadingPage(),
            ),
        ],
      ),
    );
  }
}
