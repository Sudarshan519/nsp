import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wallet_app/features/load_balance/presentations/stripe_refund/stripe_refund_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/domain/entity/transaction_item.dart';
import 'package:wallet_app/features/transaction/presentation/individual_transaction/individual_transaction_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/dashed_line.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_confirmation.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/currency_formater.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class TransactionDetailFromAPi extends StatelessWidget {
  final int id;
  const TransactionDetailFromAPi({Key? key, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<IndividualTransactionBloc>()
        ..add(
          IndividualTransactionEvent.fetchIndividualTransactionData(id),
        ),
      child: BlocBuilder<IndividualTransactionBloc, IndividualTransactionState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return state.map(
              loading: (e) => Scaffold(body: loadingPage()),
              loadedIndividual: (e) => TransactionDetailPage(item: e.item),
              failure: (e) => const SizedBox(),
              failureWithData: (e) => const SizedBox());
        },
      ),
    );
  }
}

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

    Widget refundButton() {
      final String name = item.transactionName.toString().toLowerCase();
      if ((name.contains('credit') || name.contains('stripe')) &&
          item.isRefundable) {
        return RefundButton(referenceId: item.referenceId.toString());
      }

      return const SizedBox();
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
                    currencyFormatter(
                        value: item.topupAmount ?? 0,
                        symbol: item.currency ?? ''),
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

            refundButton(),

            if (item.gps != null) googleMap()
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
      child: ShadowBoxWidget(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Table(
          children: [
            TableRow(children: [
              _tableRowItem('Title:'),
              _tableRowItem(item.transactionName),
            ]),
            TableRow(children: [
              _tableRowItem('Amount:'),
              _tableRowItem(
                  currencyFormatter(value: item.topupAmount ?? 0, symbol: '¥')),
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
            const TableRow(children: [
              SizedBox(height: 5),
              SizedBox(height: 5),
            ]),
            const TableRow(children: [
              DashedLineWidget(),
              DashedLineWidget(),
            ]),
            const TableRow(children: [
              SizedBox(height: 5),
              SizedBox(height: 5),
            ]),
            TableRow(children: [
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

    final Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
    const MarkerId markerId = MarkerId('pin_point');

    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(lat, long),
      infoWindow: const InfoWindow(title: 'Transaction Point'),
    );

    // adding a new marker to map
    markers[markerId] = marker;

    return Container(
      margin: const EdgeInsets.all(12),
      height: 275,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: GoogleMap(
          markers: Set<Marker>.of(markers.values),
          initialCameraPosition: CameraPosition(
              zoom: 17,
              target: LatLng(
                lat,
                long,
              ))),
    );
  }
}

class RefundButton extends StatelessWidget {
  final String referenceId;
  const RefundButton({Key? key, required this.referenceId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<StripeRefundBloc>(),
      child: BlocBuilder<StripeRefundBloc, StripeRefundState>(
        builder: (context, state) {
          Widget _refundButton() {
            return Padding(
              padding: const EdgeInsets.all(4),
              child: Center(
                  child: CustomButton(
                      title: 'Refund',
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => PopUpConfirmation(
                            message: 'Are you sure to make the refund?',
                            onConfirmed: () {
                              print(referenceId);
                              // AnalyticsService.logEvent(FirebaseEvents.LOGOUT);
                              context.read<StripeRefundBloc>().add(
                                  StripeRefundEvent.stripeRefund(referenceId));
                              context.popRoute();
                            },
                          ),
                        );
                      })),
            );
          }

          return state.map(
            initial: (_) => _refundButton(),
            loading: (_) {
              return const LinearProgressIndicator();
            },
            success: (_) {
              getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());
              getIt<TransactionBloc>()
                  .add(const TransactionEvent.fetchTransactionData());

              WidgetsBinding.instance?.addPostFrameCallback((_) {
                showDialog(
                  context: context,
                  builder: (_) => PopUpSuccessOverLay(
                    title: 'Refund Success',
                    message: 'The refund process for id $referenceId has been completed successfully!'
                    onPressed: () {
                      context.router.navigate(const TabBarRoute());
                    },
                  ),
                );
              });
              return Container();
            },
            failure: (fail) {
              FlushbarHelper.createError(
                message: fail.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message.isNotEmpty
                      ? error.message
                      : AppConstants.someThingWentWrong,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
              return _refundButton();
            },
          );
        },
      ),
    );
  }
}
