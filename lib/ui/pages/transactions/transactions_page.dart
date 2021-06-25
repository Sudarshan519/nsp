import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/transactions/transaction_list_view.dart';
import 'package:wallet_app/ui/pages/transactions/bnpj_card.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transactions",
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: Scrollbar(
        child: Column(
          children: [
            showBalance(),
            const SizedBox(height: 20),
            body(),
          ],
        ),
      ),
    );
  }

  Widget showBalance() {
    return const BalanceBlocWidget();
    // return BlocBuilder<HomePageDataBloc, HomePageDataState>(
    //   builder: (context, state) {
    //     return state.map(
    //       loading: (_) => loadingPage(),
    //       loaded: (success) => BalanceWidget(
    //           balance:
    //               success.data.userDetail?.formattedBalance.toString() ?? ''),
    //       failure: (error) {
    //         Future.delayed(Duration.zero, () {
    //           FlushbarHelper.createError(
    //             message: error.failure.map(
    //               noInternetConnection: (error) => AppConstants.noNetwork,
    //               serverError: (error) => error.message,
    //               invalidUser: (error) => AppConstants.someThingWentWrong,
    //             ),
    //           ).show(context);
    //         });
    //         return const Text('Error');
    //       },
    //       failureWithData: (value) => loadingPage(),
    //       initial: (value) => loadingPage(),
    //       loadingWithData: (value) => loadingPage(),
    //     );
    //   },
    // );
  }

  Widget body() {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            BNPJCard(),
            SizedBox(height: 20),
            Text(
              'Latest Transactions',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            TransactionListPage()
          ],
        ),
      ),
    );
  }
}
