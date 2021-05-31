import 'package:flutter/material.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

class UtilityPamentWidget extends StatelessWidget {
  const UtilityPamentWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CategoryTitleWidget(title: "Utility Payment"),
          ShadowBoxWidget(
              padding: const EdgeInsets.all(1),
              margin: const EdgeInsets.all(1),
              child: Container(
                height: size.height * 0.24,
                color: Colors.white30,
                child: GridView.count(
                    crossAxisCount: 3,
                    childAspectRatio: 16 / 9,
                    children: [
                      GridItem(
                        label: 'Topup',
                        icon: Icons.phone_iphone_sharp,
                        onTap: () {},
                      ),
                      GridItem(
                        label: 'Internet',
                        icon: Icons.wifi,
                        onTap: () {},
                      ),
                      GridItem(
                        label: 'Airlines',
                        icon: Icons.airplanemode_on_outlined,
                        onTap: () {},
                      ),
                      GridItem(
                        label: 'Insurance',
                        icon: Icons.person,
                        onTap: () {},
                      ),
                      GridItem(
                        label: 'Bus Ticket',
                        icon: Icons.bus_alert,
                        onTap: () {},
                      ),
                    ]),
              ))
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function onTap;
  const GridItem({
    Key? key,
    required this.label,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Column(children: [
        Icon(icon, color: Colors.amber),
        const SizedBox(height: 2),
        Text(
          label,
          textScaleFactor: 0.87,
          style: const TextStyle(fontWeight: FontWeight.w600),
        )
      ]),
    );
  }
}
