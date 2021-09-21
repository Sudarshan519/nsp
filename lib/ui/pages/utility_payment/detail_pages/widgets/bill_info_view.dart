import 'package:flutter/material.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/payment_customer_info.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/utils/currency_formater.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class BillInfoView extends StatelessWidget {
  final Function() onBillPay;
  const BillInfoView({
    Key? key,
    required this.customer,
    required this.onBillPay,
  }) : super(key: key);

  final PaymentCustomerInfoModel customer;

  @override
  Widget build(BuildContext context) {
    double _conversionRate = 1.067;

    final homedata = getIt<HomePageDataBloc>().homeData;
    if (homedata != null) {
      _conversionRate =
          1 / (homedata.userDetail?.purchaseConversionRate ?? 1.067);
    }
    Widget _listItem(IconData icon, String title, String value) {
      return ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(value),
      );
    }

    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: ShadowBoxWidget(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          margin: const EdgeInsets.all(18),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _listItem(Icons.person, customer.customerName, 'Name'),
            _listItem(Icons.calendar_today_outlined,
                DateTimeFormatter.formatDate(customer.dueDate), 'Due date'),
            _listItem(
                Icons.money,
                currencyFormatter(
                  value:
                      (double.parse(customer.amount) / 100) / _conversionRate,
                ),
                'Amount'),
            const SizedBox(height: 8),
          ]),
        ),
      ),
      const SizedBox(height: 20),
      CustomButton(
          title: 'Pay Bill',
          onTap: () {
            onBillPay();
          })
    ]));
  }
}
