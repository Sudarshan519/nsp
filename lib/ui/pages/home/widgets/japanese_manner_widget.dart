import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/domain/entities/japanese_manner.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';

class JapaneseMannerWidget extends StatelessWidget {
  final List<JapaneseManner> data;
  const JapaneseMannerWidget({
    Key key,
    @required this.data,
  })  : assert(data != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                const CategoryTitleWidget(title: "Japanese Manner"),
                const Spacer(),
                Text(
                  "1/${data.length}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              color: Palette.white,
              height: 270,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return getServiceItem(context, data[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getServiceItem(BuildContext context, JapaneseManner data) {
    final baseURL = getIt<ConfigReader>().baseURL;
    return InkWell(
      onTap: () => ExtendedNavigator.of(context)
          .pushJapaneseMannerDetailPage(japaneseManner: data),
      child: Container(
        color: Palette.white,
        width: MediaQuery.of(context).size.width * 0.45,
        margin: const EdgeInsets.only(
          top: 8,
          bottom: 16,
          right: 8,
          left: 8,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "$baseURL${data.image}",
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              data.title ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.justify,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            // CustomButton(
            //   title: data?.category?.categoryName ?? "",
            //   onTap: () {},
            // ),
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
                data?.category?.categoryName ?? "",
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
    );
  }
}
