import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_places/get_alert_places_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
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
                  return const Center(
                    child: Text('Faild to load Cities'),
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
  List<Place> cities = [];
  List<Place> prefectures = [];
  Place? selectedCity;
  Place? selectedPrefacture;

  final TextEditingController _search = TextEditingController();

  @override
  void initState() {
    super.initState();
    cities = widget.alertPlaces.cities;
    prefectures = widget.alertPlaces.prefectures;
  }

  @override
  Widget build(BuildContext context) {
    Widget cityList() {
      final activeList = _search.text.isEmpty
          ? selectedCity != null
              ? cities
              : prefectures
          : searchList;
      return Expanded(
        child: Scrollbar(
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: activeList.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  // if (selectedCity == null) {
                  // setState(() {
                  selectedCity = activeList[index];
                  prefectures = widget.alertPlaces.prefectures
                      .where((element) =>
                          element.prefectureCode ==
                          selectedCity!.prefectureCode)
                      .toList();
                  // });
                  // } else {
                  context.popRoute(selectedCity);
                  // }
                },
                leading: const Icon(Icons.location_city),
                title: Text(activeList[index].nameEn),
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
            if (selectedCity == null) {
              context.popRoute();
            } else {
              setState(() => selectedCity = null);
            }
          },
        ),
        title: Text(
          'Select ${selectedCity == null ? 'City' : 'Prefecture'}',
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
                    searchList = cities
                        .where((element) => element.nameEn
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
