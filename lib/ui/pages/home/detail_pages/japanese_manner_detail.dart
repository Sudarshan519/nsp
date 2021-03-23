import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/domain/entities/japanese_manner.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:wallet_app/utils/config_reader.dart';

class JapaneseMannerDetailPage extends StatelessWidget {
  final JapaneseManner japaneseManner;

  const JapaneseMannerDetailPage({
    Key key,
    @required this.japaneseManner,
  })  : assert(japaneseManner != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          japaneseManner.title ?? "",
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
    // final width = MediaQuery.of(context).size.width;
    // final baseURL = getIt<ConfigReader>().baseURL;
    return ColumnSuper(
      // innerDistance: -60,
      children: [
        // Image.network(
        //   "$baseURL${japaneseManner.image}",
        //   width: width,
        //   fit: BoxFit.fitWidth,
        // ),

        ShadowBoxWidget(
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                japaneseManner.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Html(data: japaneseManner.description),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ],
    );
  }
}