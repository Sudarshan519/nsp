import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wallet_app/features/japanese_manners/domain/entities/japanese_manner.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class JapaneseMannerWidget extends StatelessWidget {
  final JapaneseManner data;

  const JapaneseMannerWidget({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (data.isYoutube ?? false) {
      return _getYoutubePlayer(context, data);
    }
    return _getServiceItem(context, data);
  }

  Widget _getServiceItem(BuildContext context, JapaneseManner data) {
    final baseURL = getIt<ConfigReader>().baseURL;
    final width = MediaQuery.of(context).size.width * 0.4;
    if (data.image == null ||
        data.description == null ||
        data.description!.isEmpty) return const SizedBox.shrink();
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        right: 8,
        left: 8,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () => context
                .pushRoute(JapaneseMannerDetailRoute(japaneseManner: data)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "$baseURL${data.image ?? ""}",
                    // height: 120,
                    width: width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => context.pushRoute(
                            JapaneseMannerDetailRoute(japaneseManner: data)),
                        child: Text(
                          data.title ?? "",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          // maxLines: 2,
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(height: 10),
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
                          data.category?.categoryName ?? "",
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
          ),
          const SizedBox(height: 10),
          Container(
            height: 1,
            color: Palette.dividerColor,
          ),
        ],
      ),
    );
  }

  Widget _getYoutubePlayer(BuildContext context, JapaneseManner data) {
    String url = data.description ?? '';
    url = url.replaceAll("<p>", "");
    url = url.replaceAll("</p>", "");

    String videoId;
    videoId = YoutubePlayer.convertUrlToId(url) ?? '';

    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        hideControls: true,
      ),
    );

    final width = MediaQuery.of(context).size.width * 0.4;

    return InkWell(
      onTap: () {
        context.pushRoute(AppWebViewRoute(url: url, title: ''));
      },
      child: Container(
        // color: Palette.white,
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
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Container(
                    color: Palette.white,
                    height: 130,
                    width: width,
                    child: YoutubePlayer(
                      controller: _controller,
                      showVideoProgressIndicator: true,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        data.category?.categoryName ?? "",
                        style: TextStyle(
                          color: Palette.black.withOpacity(0.7),
                          fontSize: 10,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              height: 1,
              color: Palette.dividerColor,
            )
          ],
        ),
      ),
    );
  }
}
