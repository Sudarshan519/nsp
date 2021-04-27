import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class AlertDetailPage extends StatelessWidget {
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
    return Column(
      children: [
        Container(
          color: Palette.white,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16.0),
          child: const Text(
            "Northern WakayamaPref",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // const Spacer(),
        Expanded(
          child: Stack(
            children: [
              _DetailMapView(),
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
                        "4.2",
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
                          "No tsunami warnings from this earthquake",
                          style: TextStyle(
                            fontSize: 14,
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
              Row(
                children: [
                  _getDetailInformation(
                    svgIcon: "assets/images/alerts/time.svg",
                    title: "Date & Time",
                    value: "10h ago",
                    textColor: Palette.black.withOpacity(0.5),
                  ),
                  const Spacer(),
                  _getDetailInformation(
                    svgIcon: "assets/images/alerts/max-intensity.svg",
                    title: "Max Intensity",
                    value: "1",
                    textColor: Palette.black.withOpacity(0.5),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  _getDetailInformation(
                    svgIcon: "assets/images/alerts/magnitude.svg",
                    title: "Magnitude",
                    value: "4.2",
                    textColor: Palette.black.withOpacity(0.5),
                  ),
                  const Spacer(),
                  _getDetailInformation(
                    svgIcon: "assets/images/alerts/depth.svg",
                    title: "Epicenter Depth",
                    value: "50km",
                    textColor: Palette.black.withOpacity(0.5),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              _getDetailInformation(
                svgIcon: "assets/images/alerts/levels.svg",
                title: "Levels",
                value:
                    "Level 2 (Donot approach the volcano) \n\n Eruption or possibility of eruption that may affect areas near \n the creater (threat to life is possible in this areas).",
                textColor: Palette.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getDetailInformation({
    @required String svgIcon,
    @required String title,
    @required String value,
    @required Color textColor,
  }) {
    // return Expanded(
    //   child:
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
      // ),
    );
  }
}

class _DetailMapView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const GoogleMap(
      initialCameraPosition: CameraPosition(
        target: LatLng(37.785834, -122.506417),
        zoom: 15,
      ),
      // onMapCreated: _onMapCreated,
      // markers: _markers,
      myLocationEnabled: false,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
    );
  }
}
