import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';

import 'transaction.dart';

class TransactionDetailPage extends StatelessWidget {
  final Transaction transaction;
  const TransactionDetailPage({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget dateTime() {
      ///TODO: Formate datetime from transaction.date
      final String date = '2022/03/03';
      final String time = '10:30';
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.calendar_today, color: Colors.white),
          Text(
            '  $date  |  ',
            style: const TextStyle(color: Colors.white),
          ),
          const Icon(Icons.timer, color: Colors.white),
          Text(
            '  $time',
            style: const TextStyle(color: Colors.white),
          ),
        ],
      );
    }

    Widget payWidget() {
      return Transform.translate(
        offset: Offset(0, 40),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: ShadowBoxWidget(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Paid with my card'),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total',
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '¥ ${transaction.amount}',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ],
          )),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: Palette.primary,
            ),
            child: Column(
              children: [
                Text(
                  '¥ ${transaction.amount}',
                  style: const TextStyle(
                      fontSize: 37,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  transaction.placeName,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  transaction.activity,
                  style: const TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 6,
                ),
                dateTime(),
                payWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            margin: const EdgeInsets.all(12),
            height: 275,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    zoom: 17,
                    target: LatLng(transaction.lat, transaction.long))),
          ),
          Text(
            transaction.placeName,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
        ],
      ),
    );
  }
}
