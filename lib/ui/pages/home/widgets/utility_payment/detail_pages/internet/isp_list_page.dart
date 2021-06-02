import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';

class ISPListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const BackButton(
            color: Colors.white,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
          title: const Text(
            'Internet',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ShadowBoxWidget(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.all(1),
                      child: Container(
                        height: size.height * 0.28,
                        color: Colors.white30,
                        child: GridView.count(
                            crossAxisCount: 3,
                            childAspectRatio: 4 / 3,
                            children: const [
                              ISPItem(
                                  name: 'WorldLink',
                                  imageURL:
                                      "https://cdn.fing.io/images/isp/NP/logo/worldlink_logo.png"),
                              ISPItem(
                                  name: 'ViaNet',
                                  imageURL:
                                      "https://cdn.fing.io/images/isp/NP/logo/worldlink_logo.png"),
                              ISPItem(
                                  name: 'ClassicTech',
                                  imageURL:
                                      "https://cdn.fing.io/images/isp/NP/logo/worldlink_logo.png"),
                              ISPItem(
                                  name: 'Subisu',
                                  imageURL:
                                      "https://cdn.fing.io/images/isp/NP/logo/worldlink_logo.png"),
                              ISPItem(
                                  name: 'WorldLink',
                                  imageURL:
                                      "https://cdn.fing.io/images/isp/NP/logo/worldlink_logo.png"),
                            ]),
                      ))
                ])));
  }
}

class ISPItem extends StatelessWidget {
  final String name;
  final String imageURL;

  const ISPItem({Key? key, required this.name, required this.imageURL})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushRoute(IndividualISPRoute(ispTitle: name));
      },
      child: Column(
        children: [
          Container(
              width: 80,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  )),
              child: Image.network(imageURL)),
          const SizedBox(height: 4),
          Text(
            name,
            textScaleFactor: 0.7,
          )
        ],
      ),
    );
  }
}
