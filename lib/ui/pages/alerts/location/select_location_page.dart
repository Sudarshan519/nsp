import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/core/geo_location/geo_location.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({Key? key}) : super(key: key);

  @override
  _SelectLocationPageState createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  Place? selectedCity;
  List<Place> otherPrefectures = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedCity = getIt<GetAlertLocationBloc>().city;
      otherPrefectures = getIt<GetAlertLocationBloc>().otherPrefectures;
    });
  }

  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (selectedCity == null) {
        context.popRoute();
      } else {
        getIt<GetAlertLocationBloc>()
          ..add(GetAlertLocationEvent.setOtherPrefectures(otherPrefectures))
          ..add(GetAlertLocationEvent.setCity(selectedCity!));
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  'It is recommended to select the area that you are planning to stay or visit ( eg. area in which your accomodation is located)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Palette.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                if (selectedCity != null)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Primary location: '),
                        const Icon(
                          Icons.location_city,
                          size: 20,
                        ),
                        const SizedBox(width: 8),
                        Text(selectedCity?.name ?? '')
                      ],
                    ),
                  ),
                OutlinedButton(
                  onPressed: () {
                    showCupertinoModalPopup<void>(
                      context: context,
                      builder: (BuildContext cntx) => CupertinoActionSheet(
                        title: const Text('Location Setting'),
                        message: const Text('Please Select an option.'),
                        actions: <CupertinoActionSheetAction>[
                          CupertinoActionSheetAction(
                            onPressed: () async {
                              cntx.popRoute();

                              final country = getIt<HomePageDataBloc>()
                                      .homeData
                                      ?.userDetail
                                      ?.requestLocation ??
                                  '';

                              if (country.toLowerCase() != 'jp') {
                                await cntx.popRoute();

                                FlushbarHelper.createInformation(
                                        message:
                                            'This feature is only available if you are in Japan. Please select city from address list.')
                                    .show(context);
                                return;
                              }
                              final location = await getIt<GeoLocationManager>()
                                  .getForcedLocation();
                              location.fold((position) {
                                setState(() {
                                  getIt<GetAlertLocationBloc>().add(
                                      const GetAlertLocationEvent
                                          .getPlaceFromGPS());
                                });
                              }, (message) {
                                FlushbarHelper.createError(message: message)
                                    .show(context);
                              });
                            },
                            child: const Text(
                              'Select current location from GPS',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          CupertinoActionSheetAction(
                            onPressed: () async {
                              cntx.popRoute();
                              final result = await context.pushRoute(
                                  AlertPrefectureChooser(
                                      selectMultiplePrefectures: false));
                              if (result != null) {
                                setState(() {
                                  selectedCity = result as Place;
                                });
                              }
                            },
                            child: const Text(
                              'Select predictive area from address list',
                              style: TextStyle(color: Colors.black),
                            ),
                          )
                        ],
                        cancelButton: CupertinoActionSheetAction(
                          isDestructiveAction: true,
                          onPressed: () {
                            cntx.popRoute();
                          },
                          child: const Text('Cancel'),
                        ),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: Text(
                    '${selectedCity == null ? 'Select' : 'Change'} Primary Alert location',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      otherPrefectures.isEmpty
                          ? 'No other prefectures selected'
                          : '${otherPrefectures.length} Prefecture(s) Selected.',
                      textAlign: TextAlign.center),
                ),
                OutlinedButton(
                  onPressed: () async {
                    final result = await context.pushRoute(
                        AlertPrefectureChooser(
                            selectMultiplePrefectures: true));
                    if (result != null) {
                      setState(() {
                        otherPrefectures = result as List<Place>;
                      });
                    }
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: Text(
                    '${otherPrefectures.isEmpty ? 'Select' : 'Change'} Other Alert location',
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 38,
                  child: CustomButton(
                    title: 'Done',
                    onTap: () => onTap(),
                  ),
                ),
                const SizedBox(height: 20)
              ],
            ),
          ),
          Positioned(
            top: 35,
            left: 8,
            child: InkWell(
              onTap: () => onTap(),
              child: const CircleAvatar(
                // ignore: sort_child_properties_last
                child: Icon(
                  Icons.close,
                  size: 20,
                  color: Colors.white,
                ),
                backgroundColor: Colors.black,
                radius: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
