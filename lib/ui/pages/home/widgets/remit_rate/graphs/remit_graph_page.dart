import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:wallet_app/features/home/domain/entities/remit_rate.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

class RemitGraphPage extends StatefulWidget {
  final List<RemitExchange> remitExchanges;
  final String logoUrl;
  final String updatedAt;
  final bool hasSwapped;

  const RemitGraphPage({
    Key? key,
    required this.remitExchanges,
    required this.logoUrl,
    required this.updatedAt,
    required this.hasSwapped,
  }) : super(key: key);

  @override
  _RemitGraphPageState createState() => _RemitGraphPageState();
}

class _RemitGraphPageState extends State<RemitGraphPage> {
  late List<RemitExchange> _remitExchanges;
  late int _selectedIndex;

  @override
  void initState() {
    final count =
        widget.remitExchanges.length > 7 ? 7 : widget.remitExchanges.length;
    final trimmedList = widget.remitExchanges.sublist(0, count);
    _remitExchanges = trimmedList.reversed.toList();
    _selectedIndex = 0;
    super.initState();
  }

  void _changeIndex() {
    final isWeek = _selectedIndex == 1;
    final limit = isWeek ? 7 : 30;
    final count = widget.remitExchanges.length > limit
        ? limit
        : widget.remitExchanges.length;
    final trimmedList = widget.remitExchanges.sublist(0, count);
    setState(() {
      _remitExchanges = trimmedList.reversed.toList();
      _selectedIndex = isWeek ? 0 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _baseurl = getIt<ConfigReader>().baseURL;
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 40),
                color: Palette.primaryButtonColor,
                height: 3,
                width: 100,
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () => context.popRoute(),
              ),
            ],
          ),
          Image.network(
            _baseurl + widget.logoUrl,
            height: 50,
            fit: BoxFit.fitWidth,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: _changeIndex,
                child: Column(
                  children: [
                    Text(
                      "1 Week",
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    if (_selectedIndex == 0)
                      Container(
                        height: 2,
                        width: 50,
                        color: Palette.primary,
                      )
                    else
                      const SizedBox(height: 2),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              InkWell(
                onTap: _changeIndex,
                child: Column(
                  children: [
                    Text(
                      "1 Month",
                      style: TextStyle(
                        color: Palette.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    if (_selectedIndex == 1)
                      Container(
                        height: 2,
                        width: 60,
                        color: Palette.primary,
                      )
                    else
                      const SizedBox(height: 2),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.hasSwapped ? 'NPR TO JPY' : 'JPY TO NPR',
                style: TextStyle(
                  color: Palette.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "${widget.updatedAt} UTC",
                style: TextStyle(
                  color: Palette.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SfCartesianChart(
            primaryXAxis: CategoryAxis(labelRotation: -90),
            primaryYAxis: NumericAxis(
              // isVisible: false,
              anchorRangeToVisiblePoints: true,
            ),
            tooltipBehavior: TooltipBehavior(
              enable: true,
              builder: (dynamic data, dynamic point, dynamic series,
                  int pointIndex, int seriesIndex) {
                return ToolTipWidget(
                  remitExchange: _remitExchanges[pointIndex],
                );
              },
            ),
            series: <ChartSeries>[
              // Renders line chart
              LineSeries<RemitExchange, String>(
                markerSettings: MarkerSettings(
                  isVisible: true,
                  borderColor: Palette.primary,
                ),
                color: Palette.blackTextColor.withOpacity(0.4),
                enableTooltip: true,
                dataSource: _remitExchanges,
                xValueMapper: (RemitExchange exchange, _) {
                  return exchange.formattedDate;
                },
                yValueMapper: (RemitExchange exchange, _) => widget.hasSwapped
                    ? exchange.exchangeReverseRate ?? 0.0
                    : exchange.exchangeRate ?? 0.0,
                animationDuration: 1000,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ToolTipWidget extends StatelessWidget {
  final RemitExchange remitExchange;
  const ToolTipWidget({
    Key? key,
    required this.remitExchange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Palette.black,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            remitExchange.formattedDateWithYear,
            style: TextStyle(
              color: Palette.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "1 JPY = ${remitExchange.exchangeRate ?? 0.0} NPR",
            style: TextStyle(
              color: Palette.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "1 NPR = ${remitExchange.exchangeReverseRate ?? 0.0} JPY",
            style: TextStyle(
              color: Palette.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
