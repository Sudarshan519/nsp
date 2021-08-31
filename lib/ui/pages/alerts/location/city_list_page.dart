import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_places/get_alert_places_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class AlertCityChooser extends StatelessWidget {
  const AlertCityChooser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: BlocProvider(
        create: (context) =>
            getIt<GetAlertPlacesBloc>()..add(const GetAlertPlacesEvent.fetch()),
        child: BlocBuilder<GetAlertPlacesBloc, GetAlertPlacesState>(
          builder: (context, state) {
            return state.map(
                loading: (_) => loadingPage(),
                success: (success) => _AlertCityChooser(
                      alertPlaces: success.alertPlaces,
                    ),
                failure: (fail) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const DefaultTextStyle(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          child: Text('Failed to load Cities')),
                      const SizedBox(height: 10),
                      CustomButton(
                          title: 'Return', onTap: () => context.popRoute())
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}

class _AlertCityChooser extends StatefulWidget {
  final AlertPlaces alertPlaces;
  const _AlertCityChooser({Key? key, required this.alertPlaces})
      : super(key: key);

  @override
  __AlertCityChooserState createState() => __AlertCityChooserState();
}

class __AlertCityChooserState extends State<_AlertCityChooser> {
  List<Place> searchList = [];
  List<Place> cityOrVillage = [];
  Place? selectedPrefecture;
  Place? selectedVillage;

  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget cityList() {
      final activeList = _search.text.isEmpty
          ? selectedPrefecture == null
              ? widget.alertPlaces.prefectures
              : cityOrVillage
          : searchList;
      return activeList.isEmpty
          ? const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text('No results found'),
            )
          : Expanded(
              child: Scrollbar(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: activeList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {
                        if (selectedPrefecture == null) {
                          _search.clear();
                          setState(() {
                            selectedPrefecture = activeList[index];
                            final city = widget.alertPlaces.cities
                                .where((element) =>
                                    element.prefectureCode ==
                                    selectedPrefecture!.prefectureCode)
                                .toList();
                            final village = widget.alertPlaces.villages
                                .where((element) =>
                                    element.prefectureCode ==
                                    selectedPrefecture!.prefectureCode)
                                .toList();
                            cityOrVillage.clear();
                            cityOrVillage..addAll(city)..addAll(village);
                          });
                        } else {
                          context.popRoute(activeList[index]);
                        }
                      },
                      leading: const Icon(Icons.location_city),
                      title: Text(activeList[index].name),
                    );
                  },
                ),
              ),
            );
    }

    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            if (selectedPrefecture == null) {
              context.popRoute();
            } else {
              setState(() => selectedPrefecture = null);
            }
          },
        ),
        title: Text(
          'Select ${selectedPrefecture == null ? 'Prefecture' : 'City/Village'}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
              height: 40,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                controller: _search,
                onChanged: (val) {
                  setState(() {
                    final listToSearch = selectedPrefecture == null
                        ? widget.alertPlaces.prefectures
                        : cityOrVillage;
                    searchList = listToSearch
                        .where((element) => element.name
                            .toLowerCase()
                            .contains(val.toLowerCase()))
                        .toList();
                  });
                },
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  border: OutlineInputBorder(),
                ),
              )),
          cityList()
        ],
      ),
    );
  }
}
