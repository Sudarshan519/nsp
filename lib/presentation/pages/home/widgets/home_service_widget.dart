import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/domain/entities/services.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/presentation/widgets/custom_button.dart';
import 'package:wallet_app/presentation/widgets/shodow_box.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

class HomeServiceWidget extends StatelessWidget {
  final List<Services> services;
  const HomeServiceWidget({
    Key key,
    @required this.services,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            children: const [
              CategoryTitleWidget(title: "Services"),
              Spacer(),
              Text(
                "1/4",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            color: Palette.white,
            height: 210,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: services.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return getServiceItem(context, services[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget getServiceItem(BuildContext context, Services services) {
    final baseURL = getIt<ConfigReader>().baseURL;
    return Container(
      color: Palette.white,
      width: MediaQuery.of(context).size.width * 0.7,
      margin: const EdgeInsets.only(
        top: 8,
        bottom: 16,
        right: 8,
        left: 8,
      ),
      child: ShadowBoxWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "$baseURL${services.companyLogo}",
                    height: 76,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        services?.serviceProductName ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.justify,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      CustomButton(
                        title: services?.category ?? "",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "${services?.companyAddressHeadCity ?? ''},  ${services?.companyAddressHeadStreet ?? ''}",
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Text(
              "Know More",
              style: TextStyle(
                color: Palette.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
