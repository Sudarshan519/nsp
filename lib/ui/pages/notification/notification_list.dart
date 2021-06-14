import 'package:flutter/material.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

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
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 9,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              elevation: 4,
              child: ListTile(
                leading: CircleAvatar(
                    backgroundColor: Palette.primary,
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                    )),
                title: const Text(
                  'Payment Options',
                  textScaleFactor: 0.9,
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6.0, bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the",
                        textScaleFactor: 0.85,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "1 January 2021   |   22 hrs ago",
                        textScaleFactor: 0.85,
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
