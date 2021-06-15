import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class TransactionDetailPage extends StatelessWidget {
  final TransactionItem item;
  const TransactionDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget dateTime() {
      ///TODO: Formate datetime from transaction.date
      final String date =
          DateTimeFormatter.formatDate(item.createdAt.toString());
      final String time =
          DateTimeFormatter.formatTime(item.createdAt.toString());
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 80),
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today,
              color: Palette.primary,
              size: 20,
            ),
            Text(
              '  $date',
              textScaleFactor: 0.8,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              Icons.timer,
              color: Palette.primary,
              size: 20,
            ),
            Text(
              '  $time',
              textScaleFactor: 0.8,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.white),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Palette.primary,
              ),
              child: Column(
                children: [
                  Text(
                    '${item.currency} ${item.topupAmount}',
                    style: const TextStyle(
                        fontSize: 37,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Text(
                    item.transactionType.toString(),
                    textScaleFactor: 0.9,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  dateTime(),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: RichText(
                text: TextSpan(
                    text: 'Paid with: ',
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: item.paidWith.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 14),
                      )
                    ]),
              ),
            ),

            //Description Widget
            descriptionWidget(),

            if (item.gps != null) googleMap()
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Center(
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Icon(
            //           Icons.pin_drop_sharp,
            //           color: Palette.primary,
            //         ),
            //         const Text(
            //           '  Tokyo, Japan',
            //           style: TextStyle(fontWeight: FontWeight.w700),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget descriptionWidget() {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Card(
        elevation: 6,
        child: Table(
          // border: TableBorder.all(),
          children: [
            TableRow(children: [
              _tableRowItem('Title:'),
              _tableRowItem(item.transactionName),
            ]),
            TableRow(children: [
              _tableRowItem('Amount:'),
              _tableRowItem(item.topupAmount.toString()),
            ]),
            TableRow(children: [
              _tableRowItem('Currency:'),
              _tableRowItem(item.currency),
            ]),
            TableRow(children: [
              _tableRowItem('Reference ID:'),
              _tableRowItem(item.referenceId),
            ]),
            TableRow(children: [
              _tableRowItem('Remarks:'),
              _tableRowItem(item.remarks),
            ]),
            TableRow(children: [
              _tableRowItem('User:'),
              _tableRowItem(item.user, bold: true),
            ]),
            TableRow(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(width: 0.8, color: Colors.grey),
                  ),
                ),
                children: [
                  _tableRowItem('Total Amount:'),
                  _tableRowItem(item.topupAmount.toString()),
                ]),
          ],
        ),
      ),
    );
  }

  Widget _tableRowItem(String? text, {bool bold = false}) {
    return Container(
      margin: const EdgeInsets.only(left: 18.0, top: 8, bottom: 8),
      child: Text(
        text.toString(),
        textScaleFactor: 0.9,
        style:
            TextStyle(fontWeight: bold ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }

  Widget googleMap() {
    if (!item.gps.toString().contains(':')) {
      //Sometimes gps data can have other unknon string value
      return const SizedBox();
    }

    final arr = item.gps.toString().split(':');
    final lat = double.parse(arr.first);
    final long = double.parse(arr.last);
    return Container(
      margin: const EdgeInsets.all(12),
      height: 275,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: GoogleMap(
          initialCameraPosition: CameraPosition(
              zoom: 17,
              target: LatLng(
                lat,
                long,
              ))),
    );
  }
}
