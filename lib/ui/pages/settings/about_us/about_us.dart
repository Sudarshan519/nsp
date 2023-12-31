import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:wallet_app/features/home/domain/entities/home_data.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
@RoutePage() 
class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final configReader = getIt<ConfigReader>();
    final bodyData = context.read<HomePageDataBloc>().homeData?.homeData;

    Widget aboutData(List<HomeData> bodyData) {
      try {
        final about = bodyData
            .where((element) => element.type.toString() == 'about_us')
            .toList()
            .first
            .data as List<dynamic>;

        final suffix = about.first['image'] as String?;
        final title = about.first['title'] as String?;
        final description = about.first['description'] as String?;
        return ListView(
          children: [
            CachedNetworkImage(
              imageUrl: '${configReader.baseURL}$suffix',
              progressIndicatorBuilder: (context, url, progress) {
                return Center(
                  child: CircularProgressIndicator(
                    value: progress.progress,
                  ),
                );
              },
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'App Version: ${configReader.appVersion.split('+').first}',
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            ),
            ShadowBoxWidget(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      title ?? '',
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600),
                    ),
                    const Divider(
                      thickness: 2,
                      height: 20,
                    ),
                    Html(data: description),
                  ],
                ))
          ],
        );
      } catch (e) {
        return const SizedBox();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "About Us",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: bodyData != null ? aboutData(bodyData) : const SizedBox(),
    );
  }
}
