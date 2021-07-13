import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/alerts/domain/entity/weather_info.dart';
import 'package:wallet_app/features/alerts/presentation/get_weathers/get_weathers_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class WeatherListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetWeathersBloc, GetWeathersState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => loadingPage(),
          loading: (_) => loadingPage(),
          success: (success) =>
              showList(context: context, alerts: success.weathers),
          failure: (failure) => loadingPage(),
        );
      },
    );
  }

  Widget showList({
    required BuildContext context,
    required List<WeatherInfo> alerts,
  }) {
    if (alerts.isEmpty) {
      return const Center(
        child: Text("No weather info available in your area."),
      );
    }

    final width = MediaQuery.of(context).size.width * 0.1;

    return SingleChildScrollView(
      child: Column(
        children: [
          ListView.builder(
            primary: false,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: alerts.length,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Column(
                  children: [
                    Row(
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
                                    "assets/images/alerts/volcano-alerts.svg",
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
                                      alerts[index].warningName ?? '',
                                      style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      alerts[index].municipalityName ?? '',
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
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 1,
                      color: Palette.dividerColor,
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
