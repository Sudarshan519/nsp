import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/notifications/domain/entity/notification_item.dart';
import 'package:wallet_app/features/notifications/presentation/notification/notifications_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/time_ago/time_ago.dart' as date_time;

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
          ),
        ),
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
                  loadingWith: (a) => loadingPage(),
                  loaded: (data) =>
                      _NotificationListView(notifs: data.newsData),
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
  _NotificationListView({
    Key? key,
    required this.notifs,
  }) : super(key: key);

  final String baseURL = getIt<ConfigReader>().baseURL;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: notifs.length,
      itemBuilder: (BuildContext context, int index) {
        var item = notifs[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor:
                      item.image != null ? Colors.white : Palette.primary,
                  child: item.image != null
                      ? Image.network(
                          baseURL + item.image.toString(),
                          scale: 0.3,
                        )
                      : const Icon(
                          Icons.notifications_none_outlined,
                          color: Colors.white,
                        )),
              title: Text(
                item.title.toString(),
                textScaleFactor: 0.9,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 6.0, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.message.toString(),
                      textScaleFactor: 0.85,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${date_time.dateFormat(DateTime.parse(item.createdAt.toString()))}   |   ${date_time.timeSince(DateTime.parse(item.createdAt.toString()))}',
                      textScaleFactor: 0.85,
                      style: const TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
