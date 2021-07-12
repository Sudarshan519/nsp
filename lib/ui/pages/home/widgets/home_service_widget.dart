import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

class HomeServiceWidget extends StatelessWidget {
  final List<Services> services;
  const HomeServiceWidget({
    Key? key,
    required this.services,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      child: Column(
        children: [
          Row(
            children: [
              const CategoryTitleWidget(title: "Services"),
              const Spacer(),
              InkWell(
                onTap: () {
                  context.pushRoute(
                    PartnerServicesRoute(categoryName: ''),
                  );
                },
                child: Text(
                  'view all',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Palette.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            color: Palette.white,
            height: 215,
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
                InkWell(
                  onTap: () => context
                      .pushRoute(ServicesDetailRoute(services: services)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      "$baseURL${services.companyLogo}",
                      height: 76,
                      width: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        services.serviceProductName ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: () => context.pushRoute(
                          PartnerServicesRoute(
                              categoryName: services.category ?? ''),
                        ),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Palette.black.withOpacity(0.3),
                            ),
                          ),
                          child: Text(
                            services.category ?? "",
                            style: TextStyle(
                              color: Palette.black.withOpacity(0.7),
                              fontSize: 10,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              services.descriptionWithOutHtmlTags,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () =>
                  context.pushRoute(ServicesDetailRoute(services: services)),
              child: Text(
                "Know More",
                style: TextStyle(
                  color: Palette.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
