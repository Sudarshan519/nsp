import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';
import 'package:wallet_app/features/partner_services/presentation/partner_services/parnter_services_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:wallet_app/utils/config_reader.dart';

class ServiceDetailPageFromAPI extends StatelessWidget {
  final int id;
  const ServiceDetailPageFromAPI({Key? key, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ParnterServicesBloc>()
        ..add(
          ParnterServicesEvent.fetch(id: id),
        ),
      child: BlocBuilder<ParnterServicesBloc, ParnterServicesState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.map(
            loading: (e) => Scaffold(body: loadingPage()),
            failureWithData: (e) => Scaffold(body: loadingPage()),
            loadingWithData: (e) => Scaffold(body: loadingPage()),
            loaded: (e) => ServicesDetailPage(services: e.list.first),
            failure: (e) => const SizedBox(),
          );
        },
      ),
    );
  }
}

class ServicesDetailPage extends StatelessWidget {
  final Services services;

  const ServicesDetailPage({
    Key? key,
    required this.services,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          services.companyName ?? "",
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: newsBody(context),
    );
  }

  Widget newsBody(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final baseURL = getIt<ConfigReader>().baseURL;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ColumnSuper(
            innerDistance: -50,
            children: [
              Image.network(
                "$baseURL${services.companyBannerImage}",
                width: width,
                fit: BoxFit.fitWidth,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: Palette.primaryBackground,
                    height: 200,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                (loadingProgress.expectedTotalBytes ?? 1)
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (_, __, ___) {
                  return Image.asset(
                    'assets/images/navigation_bar/u1.png',
                    fit: BoxFit.cover,
                  );
                },
              ),
              ShadowBoxWidget(
                margin: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: FadeInImage.assetNetwork(
                            image: "$baseURL${services.companyLogo}",
                            height: 76,
                            width: 90,
                            fit: BoxFit.cover,
                            placeholder: "",
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
                                textAlign: TextAlign.justify,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${services.companyAddressHeadStreet ?? ""}, ${services.companyAddressHeadCity ?? ""}, ${services.companyAddressHeadProvince ?? ""}, ${services.companyAddressHeadCountry ?? ""}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Container(
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
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  if (services.companyName != null &&
                                      services.companyName!.contains("Mirai"))
                                    InkWell(
                                      onTap: () {
                                        context.pushRoute(
                                          PartnerServicePaymentRoute(
                                            payData: UtilityPaymentsModel(
                                              id: services.id,
                                              name: services.companyName,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 2,
                                        ),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            // border: Border.all(
                                            //   color: Palette.black.withOpacity(0.3),
                                            // ),
                                            color: Palette.primary),
                                        child: Text(
                                          "View/Pay Bills",
                                          style: TextStyle(
                                            color: Palette.white,
                                            fontSize: 10,
                                          ),
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // ),
                    const SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 1,
                      color: Palette.dividerColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Html(
                      data: services.description,
                      onLinkTap: (link, _, __, ___) {
                        context.pushRoute(
                            AppWebViewRoute(url: link ?? '', title: ""));
                      },
                    ),

                    const SizedBox(height: 20),

                    if (services.serviceUrl != null)
                      Column(
                        children: [
                          Center(
                            child: CustomButton(
                              title: "Load More",
                              textStyle: TextStyle(
                                color: Palette.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                              ),
                              onTap: () => context.pushRoute(AppWebViewRoute(
                                  url: services.serviceUrl ?? "",
                                  title: services.companyName ?? "")),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (services.servicePackages?.isNotEmpty ?? false) packageList()
        ],
      ),
    );
  }

  Widget packageList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            'Our Packages',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: services.servicePackages?.length ?? 0,
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black54,
            indent: 18,
            endIndent: 18,
          ),
          itemBuilder: (BuildContext context, int index) {
            final item = services.servicePackages?[index];
            return ListTile(
              leading: Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Palette.primary,
                  ),
                  child: SizedBox(
                    child: SvgPicture.asset(
                      'assets/images/services/icon-package.svg',
                      fit: BoxFit.scaleDown,
                      color: Colors.white,
                    ),
                  )),
              title: Text(item?.packageName ?? ''),
              subtitle: Text(
                "¥ ${item?.packagePrice}",
                style: TextStyle(
                    fontWeight: FontWeight.w700, color: Palette.primary),
              ),
              trailing: (item?.isPayable ?? false)
                  ? SizedBox(
                      height: 30,
                      width: 70,
                      child: InkWell(
                        onTap: () {
                          if (item != null) {
                            context.pushRoute(
                              BuyPackageRoute(
                                cashBackPercent:
                                    services.cashbackPercentage ?? 0,
                                rewardPoint: services.rewardPoints ?? 0,
                                package: item,
                                services: services,
                              ),
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(color: Palette.primary),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              'Buy',
                              style: TextStyle(
                                color: Palette.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
}
