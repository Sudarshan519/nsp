import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/core/geo_location/geo_location.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_location/get_alert_location_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class SelectLocationPage extends StatefulWidget {
  const SelectLocationPage({Key? key}) : super(key: key);

  @override
  _SelectLocationPageState createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends State<SelectLocationPage> {
  Place? selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              'It is recommended to select the area that you are planning to stay or visit ( eg. area in which your accomodation is located)',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
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
                    const Icon(Icons.location_city),
                    const SizedBox(width: 8),
                    Text(selectedCity?.nameEn ?? '')
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
                          // if (country.toLowerCase() != 'jp') {
                          //   FlushbarHelper.createError(
                          //           message:
                          //               'Judged as a request from overseas!')
                          //       .show(context);
                          //   return;
                          // }
                          final location = await getIt<GeoLocationManager>()
                              .getForcedLocation();
                          location.fold((position) {
                            setState(() {
                              // _cityCode =
                              //     '${position.latitude},${position.longitude}';
                            });
                          }, (message) {
                            FlushbarHelper.createError(message: message)
                                .show(context);
                          });
                        },
                        child: const Text('Select current location from GPS'),
                      ),
                      CupertinoActionSheetAction(
                        onPressed: () async {
                          cntx.popRoute();
                          final result =
                              await context.pushRoute(const AlertCityChooser());
                          if (result != null) {
                            setState(() {
                              selectedCity = result as Place;
                            });
                          }
                        },
                        child: const Text(
                            'Select predictive area from address list'),
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
                  '${selectedCity == null ? 'Select' : 'Change'} location'),
            ),
            const Spacer(),
            CustomButton(
              title: 'Done',
              onTap: () {
                if (selectedCity == null) {
                  context.popRoute();
                } else {
                  context
                      .read<GetAlertLocationBloc>()
                      .add(GetAlertLocationEvent.setCity(selectedCity!));
                }
              },
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
