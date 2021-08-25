import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class AlertCityChooser extends StatefulWidget {
  const AlertCityChooser({Key? key}) : super(key: key);

  @override
  _AlertCityChooserState createState() => _AlertCityChooserState();
}

class _AlertCityChooserState extends State<AlertCityChooser> {
  List<String> searchList = [];
  final cityData =
      List<String>.generate(30, (int index) => 'City ${index + 1}');
  final TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget cityList() {
      final activeList = _search.text.isEmpty ? cityData : searchList;
      return Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: activeList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              onTap: () {
                context.popRoute(activeList[index]);
              },
              leading: const Icon(Icons.location_city),
              title: Text(activeList[index]),
            );
          },
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
                height: 40,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: _search,
                  onChanged: (val) {
                    setState(() {
                      searchList = cityData
                          .where((element) =>
                              element.toLowerCase().contains(val.toLowerCase()))
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
      ),
    );
  }
}
