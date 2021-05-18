import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:wallet_app/utils/config_reader.dart';

class ServicesDetail extends StatelessWidget {
  final Services services;

  const ServicesDetail({
    Key key,
    @required this.services,
  })  : assert(services != null),
        super(key: key);

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
    // debugPrint("$baseURL${services.companyBannerImage}");
    return SingleChildScrollView(
      child: ColumnSuper(
        innerDistance: -50,
        children: [
          Image.network(
            "$baseURL${services.companyBannerImage}",
            width: width,
            fit: BoxFit.fitWidth,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Container(
                color: Palette.primaryBackground,
                height: 200,
                child: Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes
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
                            services?.serviceProductName ?? "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.justify,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${services?.companyAddressHeadStreet ?? ""}, ${services?.companyAddressHeadCity ?? ""}, ${services?.companyAddressHeadProvince ?? ""}, ${services?.companyAddressHeadCountry ?? ""}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 5),
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
                              services?.category ?? "",
                              style: TextStyle(
                                color: Palette.black.withOpacity(0.7),
                                fontSize: 10,
                              ),
                              overflow: TextOverflow.clip,
                            ),
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
                  onLinkTap: (link) {
                    ExtendedNavigator.of(context).pushAppWebView(
                      url: link,
                      title: "",
                    );
                  },
                ),

                const SizedBox(height: 20),

                if (services?.serviceUrl != null)
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
                          onTap: () =>
                              ExtendedNavigator.of(context).pushAppWebView(
                            url: services?.serviceUrl ?? "",
                            title: services?.companyName ?? "",
                          ),
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
    );
  }
}
