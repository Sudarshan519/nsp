import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/home/widgets/category_title_text.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class JapaneseMannerWidget extends StatelessWidget {
  final List<JapaneseManner> data;
  final _positionNotifier = ValueNotifier<String>("1");
  JapaneseMannerWidget({
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
                Row(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: _positionNotifier,
                      builder: (context, position, child) {
                        return Text(
                          position as String,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                    Text(
                      "/${data.length}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              color: Palette.white,
              height: 240,
              child: NotificationListener<ScrollUpdateNotification>(
                onNotification: (notification) {
                  final pixel = notification.metrics.pixels / 170;
                  _positionNotifier.value = "${pixel.toInt() + 1}";
                  return true;
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (data[index].isYoutube) {
                      return _getYoutubePlayer(context, data[index]);
                    }
                    return _getServiceItem(context, data[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getServiceItem(BuildContext context, JapaneseManner data) {
    final baseURL = getIt<ConfigReader>().baseURL;
    return Container(
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
          InkWell(
            onTap: () => ExtendedNavigator.of(context)
                .pushJapaneseMannerDetailPage(japaneseManner: data),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "$baseURL${data.image}",
                height: 130,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            data.title ?? "",
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          InkWell(
            onTap: () => ExtendedNavigator.of(context).pushJapaneseMannerPage(
              categoryName: data?.category?.categoryName,
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
                data?.category?.categoryName ?? "",
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
    );
  }

  Widget _getYoutubePlayer(BuildContext context, JapaneseManner data) {
    String url = data.description;
    url = url.replaceAll("<p>", "");
    url = url.replaceAll("</p>", "");

    String videoId;
    videoId = YoutubePlayer.convertUrlToId(url);

    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        hideControls: true,
      ),
    );

    return InkWell(
      onTap: () {
        ExtendedNavigator.of(context).pushAppWebView(
          url: url ?? "",
          title: data.title ?? "",
        );
      },
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
              child: Container(
                color: Palette.white,
                height: 130,
                child: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                ),
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
