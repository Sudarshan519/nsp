import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/core/notification/navigate_notification.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/notifications/presentation/notification/notifications_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/time_ago/time_ago.dart' as date_time;
import 'package:auto_route/auto_route.dart';
@RoutePage()
class NotificationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            centerTitle: true,
            leading: const BackButton(
              color: Colors.white,
            ),
            title: const Text(
              'Notification',
              style: TextStyle(color: Colors.white),
            )),
        body: BlocProvider(
          create: (_) => getIt<NotificationsBloc>()
            ..add(
              const NotificationsEvent.fetchNotificationData(),
            ),
          child: BlocConsumer<NotificationsBloc, NotificationsState>(
            listener: (context, state) {},
            buildWhen: (previous, current) =>
                previous.hashCode != current.hashCode,
            builder: (context, state) {
              return state.map(
                  loading: (a) => loadingPage(),
                  loadingWith: (data) => _NotificationListView(
                        notifs: data.notificationData,
                        isLoading: true,
                      ),
                  loaded: (data) =>
                      _NotificationListView(notifs: data.notificationData),
                  failure: (a) => loadingPage(), //  Text('failure'),
                  failureWithData: (a) =>
                      loadingPage() //Text('fail with data'),
                  );
            },
          ),
        ));
  }
}

class _NotificationListView extends StatelessWidget {
  final List<NotificationItem> notifs;
  final bool isLoading;
  _NotificationListView({
    Key? key,
    required this.notifs,
    this.isLoading = false,
  }) : super(key: key);

  final String baseURL = getIt<ConfigReader>().baseURL;
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController
        ..addListener(() {
          if (_scrollController.offset ==
                  _scrollController.position.maxScrollExtent &&
              !context.read<NotificationsBloc>().isFetching) {
            context
                .read<NotificationsBloc>()
                .add(const NotificationsEvent.fetchNotificationData());
          }
        }),
      child: Column(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: notifs.length,
            itemBuilder: (BuildContext context, int index) {
              final item = notifs[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 4,
                  child: Stack(
                    children: [
                      ListTile(
                        contentPadding: const EdgeInsets.all(16),
                        leading: Transform.translate(
                          offset: const Offset(0, -9),
                          child: CircleAvatar(
                              backgroundColor: Palette.primary,
                              child: SvgPicture.asset(
                                  'assets/images/notification/icon-notify.svg',
                                  color: Colors.white)),
                        ),
                        title: Text(
                          item.title.toString(),
                          textScaleFactor: 0.9,
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(
                            top: 6.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (item.image != null &&
                                  item.image.toString().isNotEmpty)
                                Center(
                                  child: SizedBox(
                                    height: 90,
                                    child: Hero(
                                      tag: item.id.toString(),
                                      child: Image.network(
                                        item.image.toString(),
                                        loadingBuilder: (BuildContext context,
                                            Widget child,
                                            ImageChunkEvent? loadingProgress) {
                                          if (loadingProgress == null)
                                            return child;
                                          return Container(
                                            color: Palette.primaryBackground,
                                            height: 100,
                                            child: Center(
                                              child: CircularProgressIndicator(
                                                color: Palette.primary,
                                                value: loadingProgress
                                                            .expectedTotalBytes !=
                                                        null
                                                    ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        (loadingProgress
                                                                .expectedTotalBytes ??
                                                            1)
                                                    : null,
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                item.message.toString(),
                                textScaleFactor: 0.85,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                '${date_time.dateFormat(DateTime.parse(item.createdAt.toString()))}   |   ${date_time.timeSince(DateTime.parse(item.createdAt.toString()))}',
                                textScaleFactor: 0.85,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        onTap: () => navigate(context, item),
                      ),
                      if (item.isPinned) pinWidget()
                    ],
                  ),
                ),
              );
            },
          ),
          if (isLoading)
            SizedBox(
              height: 70,
              child: loadingPage(),
            ),
        ],
      ),
    );
  }

  Align pinWidget() {
    return Align(
      alignment: Alignment.topRight,
      child: Transform.translate(
        offset: const Offset(11, -6),
        child: Card(
          elevation: 6,
          shape: const CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: SvgPicture.asset(
              'assets/images/notification/icon-pin.svg',
              height: 17,
              width: 17,
            ),
          ),
        ),
      ),
    );
  }
}
