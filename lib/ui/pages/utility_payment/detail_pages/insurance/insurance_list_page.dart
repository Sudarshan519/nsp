import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

class InsuranceListPage extends StatelessWidget {
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
            'Insurance',
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
                        height: size.height * 0.34,
                        color: Colors.white30,
                        child: GridView.count(crossAxisCount: 3,
                            // childAspectRatio: 1,
                            children: const [
                              ISPItem(
                                  name: 'Nepal Life Insurance',
                                  imageURL:
                                      "https://pbs.twimg.com/profile_images/3027265948/29288fe2494bf461f7fb15177d28f14a.jpeg"),
                              ISPItem(
                                  name: 'Sanima Life Insurance',
                                  imageURL:
                                      "https://pbs.twimg.com/profile_images/3027265948/29288fe2494bf461f7fb15177d28f14a.jpeg"),
                              ISPItem(
                                  name: 'Himalayan General Insurance',
                                  imageURL:
                                      "https://pbs.twimg.com/profile_images/3027265948/29288fe2494bf461f7fb15177d28f14a.jpeg"),
                              ISPItem(
                                  name: 'Jyoti Life Insurance',
                                  imageURL:
                                      "https://pbs.twimg.com/profile_images/3027265948/29288fe2494bf461f7fb15177d28f14a.jpeg"),
                              ISPItem(
                                  name: 'Sagarmatha Insurance',
                                  imageURL:
                                      "https://pbs.twimg.com/profile_images/3027265948/29288fe2494bf461f7fb15177d28f14a.jpeg"),
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
        // context.pushRoute(IndividualInsuranceRoute(insuranceTitle: name));
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
            textAlign: TextAlign.center,
            textScaleFactor: 0.7,
            softWrap: true,
          )
        ],
      ),
    );
  }
}
