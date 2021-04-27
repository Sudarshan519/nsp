import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/presentation/get_alerts/get_alerts_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class AlertListPage extends StatelessWidget {
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
    @required BuildContext context,
    @required List<Alert> alerts,
    bool isLoading = false,
  }) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: alerts.length,
            itemBuilder: (context, index) {
              return _listItem(
                context: context,
                alert: alerts[index],
              );
            },
          ),
        ),
        if (isLoading)
          SizedBox(
            height: 70,
            child: loadingPage(),
          ),
      ],
    );
  }

  Widget _listItem({
    @required BuildContext context,
    @required Alert alert,
  }) {
    final width = MediaQuery.of(context).size.width * 0.1;
    final isEarthQuake = alert.label.toLowerCase() == "earthquake";
    if (isEarthQuake) {
      return InkWell(
        onTap: () => ExtendedNavigator.of(context).pushAlertDetailPage(),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: SvgPicture.asset(
                              "/assets/images/alerts/earthquake-info.svg",
                              color: Palette.white,
                              height: width,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                alert.epicenterValue ?? "",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "2021/03/24 | 06:46",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Palette.black.withOpacity(0.5),
                                ),
                              ),
                              Text(
                                "Maximum seismic intensity 4.3",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Palette.black.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            "4.2",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Palette.white,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "10h",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Palette.black.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 1,
                color: Palette.dividerColor,
              ),
            ],
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
