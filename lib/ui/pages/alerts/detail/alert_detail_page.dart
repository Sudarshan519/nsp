import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_model.dart';
import 'package:wallet_app/features/alerts/presentation/get_disaster_detail/get_disaster_detail_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class AlertDetailFomApi extends StatelessWidget {
  final String id;
  const AlertDetailFomApi({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GetDisasterDetailBloc>()
        ..add(
          GetDisasterDetailEvent.fetch(id),
        ),
      child: BlocBuilder<GetDisasterDetailBloc, GetDisasterDetailState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.map(
              loading: (e) => Scaffold(body: loadingPage()),
              failure: (e) => const SizedBox(),
              success: (e) => AlertDetailPage(
                    alert: e.alerts.first,
                  ));
        },
      ),
    );
  }
}

class AlertDetailPage extends StatelessWidget {
  final Alert alert;

  const AlertDetailPage({
    Key? key,
    required this.alert,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alerts",
          style: TextStyle(color: Palette.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: SafeArea(child: _detailBody(context)),
    );
  }

  Widget _detailBody(BuildContext context) {
    final isEarthQuake = alert.label?.toLowerCase() == "earthquake";
    return Column(
      children: [
        Container(
          color: Palette.white,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16.0),
          child: Text(
            isEarthQuake
                ? alert.epicenterValue ?? ''
                : alert.volcanoNameValue ?? '',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // const Spacer(),
        Expanded(
          child: Stack(
            children: [
              if (isEarthQuake)
                _DetailMapView(
                  lat: alert.lat ?? 0.0,
                  lng: alert.lon ?? 0.0,
                )
              else
                _DetailMapView(
                  lat: alert.volcanoLatitude ?? 0.0,
                  lng: alert.volcanoLongtitude ?? 0.0,
                ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 16.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    color: Palette.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
            right: 16.0,
            left: 16.0,
            bottom: 16.0,
          ),
          decoration: BoxDecoration(
            color: Palette.white,
          ),
          child: Column(
            children: [
              if (isEarthQuake)
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Palette.primary,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Center(
                            child: Text(
                              "${alert.magnitudeValue}",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Palette.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Richer Scale",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Palette.black,
                                ),
                              ),
                              Text(
                                alert.tsunamiMessage ?? "",
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
                    const SizedBox(height: 10),
                    Container(
                      height: 1,
                      color: Palette.dividerColor,
                    ),
                    const SizedBox(height: 10),
                  ],
                )
              else
                const SizedBox(height: 20),
              Row(
                children: [
                  _getDetailInformation(
                    svgIcon: "assets/images/alerts/time.svg",
                    title: "Date & Time",
                    value: "10h ago",
                    textColor: Palette.black.withOpacity(0.5),
                  ),
                  const Spacer(),
                  if (isEarthQuake)
                    _getDetailInformation(
                      svgIcon: "assets/images/alerts/max-intensity.svg",
                      title: "Max Intensity",
                      value: "1",
                      textColor: Palette.black.withOpacity(0.5),
                    )
                  else
                    _getDetailInformation(
                      svgIcon: "assets/images/alerts/max-intensity.svg",
                      title: "Warnings",
                      value: alert.typeValue ?? '',
                      textColor: Palette.black.withOpacity(0.5),
                    ),
                  const SizedBox(width: 60),
                ],
              ),
              const SizedBox(height: 20),
              if (isEarthQuake)
                Row(
                  children: [
                    _getDetailInformation(
                      svgIcon: "assets/images/alerts/magnitude.svg",
                      title: "Magnitude",
                      value: "${alert.magnitudeValue}",
                      textColor: Palette.black.withOpacity(0.5),
                    ),
                    const Spacer(),
                    _getDetailInformation(
                      svgIcon: "assets/images/alerts/depth.svg",
                      title: "Epicenter Depth",
                      value: alert.depthValue ?? '',
                      textColor: Palette.black.withOpacity(0.5),
                    ),
                    const SizedBox(width: 40),
                  ],
                )
              else
                _getSingleLineDetailInformation(
                  svgIcon: "assets/images/alerts/levels.svg",
                  title: "Levels",
                  value:
                      "${alert.levelTitle} ${alert.levelValue} (Do not approach the volcano)\n\n${alert.levelText}",
                  textColor: Palette.black.withOpacity(0.5),
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getDetailInformation({
    required String svgIcon,
    required String title,
    required String value,
    required Color textColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          svgIcon,
          height: 20,
        ),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Palette.black,
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: textColor,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _getSingleLineDetailInformation({
    required String svgIcon,
    required String title,
    required String value,
    required Color textColor,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          svgIcon,
          height: 20,
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Palette.black,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailMapView extends StatelessWidget {
  final double lat;
  final double lng;
  final Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  final MarkerId markerId = const MarkerId('pin_point');

  _DetailMapView({
    Key? key,
    required this.lat,
    required this.lng,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(lat, lng),
      infoWindow: const InfoWindow(title: 'Alert Point'),
    );
    markers[markerId] = marker;

    return GoogleMap(
      markers: Set<Marker>.of(markers.values),
      initialCameraPosition: CameraPosition(
        target: LatLng(lat, lng),
        zoom: 12,
      ),
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
    );
  }
}
