import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/alerts/domain/entity/alert_places.dart';
import 'package:wallet_app/features/alerts/presentation/get_alert_places/get_alert_places_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class AlertPrefectureChooser extends StatelessWidget {
  final bool selectMultiplePrefectures;
  const AlertPrefectureChooser({
    required this.selectMultiplePrefectures,
  });

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
                success: (success) => _AlertPrefectureChooser(
                      alertPlaces: success.alertPlaces,
                      selectMultiplePrefectures: selectMultiplePrefectures,
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

class _AlertPrefectureChooser extends StatefulWidget {
  final AlertPlaces alertPlaces;
  final bool selectMultiplePrefectures;

  const _AlertPrefectureChooser(
      {Key? key,
      required this.alertPlaces,
      required this.selectMultiplePrefectures})
      : super(key: key);

  @override
  __AlertPrefectureChooserState createState() =>
      __AlertPrefectureChooserState();
}

class __AlertPrefectureChooserState extends State<_AlertPrefectureChooser> {
  List<Place> searchList = [];
  List<Place> cityOrVillage = [];

  List<Place> otherPrefectures = [];

  Place? selectedPrefecture;
  Place? selectedVillage;

  bool _allSelected = true;
  final TextEditingController _search = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectAll();
  }

  void selectAll() {
    otherPrefectures.clear();
    setState(() {
      otherPrefectures.addAll(widget.alertPlaces.prefectures);
      _allSelected = true;
    });
  }

  void deSelectAll() {
    setState(() {
      otherPrefectures.clear();
      _allSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    void selectPrefecture(Place prefecture) {
      setState(() {
        if (otherPrefectures.contains(prefecture)) {
          otherPrefectures.remove(prefecture);
        } else {
          otherPrefectures.add(prefecture);
        }
      });
    }

    Widget getTrailingWidget(Place prefecture) {
      if (!widget.selectMultiplePrefectures) {
        return const SizedBox();
      }
      final isSelected = otherPrefectures.contains(prefecture);
      return Transform.translate(
        offset: const Offset(5, 0),
        child: Icon(
          isSelected ? Icons.check_circle_rounded : Icons.circle_outlined,
          color: isSelected ? Palette.primary : Colors.black,
        ),
      );
    }

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
                        if (widget.selectMultiplePrefectures) {
                          selectPrefecture(
                              widget.alertPlaces.prefectures[index]);
                        } else {
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
                        }
                      },
                      leading: const Icon(Icons.location_city),
                      trailing: getTrailingWidget(
                          widget.alertPlaces.prefectures[index]),
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
          actions: [
            if (widget.selectMultiplePrefectures)
              CustomButton(
                  title: 'Done',
                  onTap: () {
                    context.popRoute(otherPrefectures);
                  })
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const SizedBox(width: 5),
              Expanded(
                child: SizedBox(
                    height: 35,
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
                        prefixIcon: Icon(
                          Icons.search,
                          size: 22,
                        ),
                        hintText: 'Search',
                        border: OutlineInputBorder(),
                      ),
                    )),
              ),
              const SizedBox(width: 3),
              if (widget.selectMultiplePrefectures)
                Transform.scale(
                  scale: 1.8,
                  child: Checkbox(
                      activeColor: Palette.primary,
                      value: _allSelected,
                      onChanged: (val) {
                        setState(() {
                          if (val ?? true) {
                            selectAll();
                          } else {
                            deSelectAll();
                          }
                        });
                      }),
                )
            ],
          ),
          cityList()
        ],
      ),
    );
  }
}
