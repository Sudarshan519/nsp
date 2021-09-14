import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/utils/config_reader.dart';

class BannerWidget extends StatelessWidget {
  final String bannerUrl;
  const BannerWidget({
    required this.bannerUrl,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _baseURL = getIt<ConfigReader>().baseURL;

    return InkWell(
      onTap: () => context.pushRoute(const BannerDetailRoute()),
      child: Container(
        margin: const EdgeInsets.all(16),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            imageUrl: _baseURL + bannerUrl,
            progressIndicatorBuilder: (context, url, progress) {
              return SizedBox(
                height: 70,
                child: Center(
                  child: loadingPage(),
                ),
              );
            },
            errorWidget: (context, url, error) => const SizedBox(),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
