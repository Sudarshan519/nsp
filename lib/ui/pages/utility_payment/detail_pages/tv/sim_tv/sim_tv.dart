import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/features/utility_payments/presentation/tv/sim_tv/sim_tv_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';

class SimTVPage extends StatelessWidget {
  final UtilityPaymentsModel payData;

  const SimTVPage({Key? key, required this.payData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          payData.name ?? 'Sim TV',
          style: TextStyle(
            color: Palette.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        elevation: 0,
      ),
      body: Column(
        children: [
          const BalanceWidget(),
          body(),
        ],
      ),
    );
  }

  Widget body() {
    return BlocProvider(
      create: (context) =>
          getIt<SimTvBloc>()..add(SimTvEvent.started(payData.id.toString())),
      child: BlocConsumer<SimTvBloc, SimTvState>(
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () => {},
            (either) => either.fold(
              (failure) {
                FlushbarHelper.createError(
                    message: failure.map(
                  serverError: (error) => error.message,
                  invalidUser: (_) => AppConstants.someThingWentWrong,
                  noInternetConnection: (_) => AppConstants.noNetwork,
                )).show(context);
              },
              (success) {
                getIt<GetBalanceBloc>()
                    .add(const GetBalanceEvent.fetchBalance());

                getIt<TransactionBloc>()
                    .add(const TransactionEvent.fetchTransactionData());
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) => PopUpSuccessOverLay(
                    title: "Success",
                    message: 'Your bill has been paid!',
                    onPressed: () {
                      context.router.navigate(const TabBarRoute());
                    },
                  ),
                );
              },
            ),
          );
        },
        builder: (context, state) {
          return state.isSubmitting
              ? Center(child: loadingPage())
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20),
                          BlocBuilder<SimTvBloc, SimTvState>(
                            buildWhen: (previous, current) =>
                                previous.customerId != current.customerId,
                            builder: (context, state) {
                              return TextWidetWithLabelAndChild(
                                  title: 'Customer Id',
                                  child: InputTextWidget(
                                      textInputType: TextInputType.number,
                                      maxlength: 10,
                                      hintText: 'XXXXXXXXXX',
                                      onChanged: (id) {
                                        context.read<SimTvBloc>().add(
                                            SimTvEvent.changeCustomerId(id));
                                      },
                                      value: state.customerId));
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          BlocBuilder<SimTvBloc, SimTvState>(
                            buildWhen: (previous, current) =>
                                previous.amount != current.amount,
                            builder: (context, state) {
                              return TextWidetWithLabelAndChild(
                                  title: 'Amount',
                                  child: InputTextWidget(
                                      textInputType: TextInputType.number,
                                      maxlength: 5,
                                      hintText: 'XXX',
                                      onChanged: (amt) {
                                        context
                                            .read<SimTvBloc>()
                                            .add(SimTvEvent.changeAmount(amt));
                                      },
                                      value: state.customerId));
                            },
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            onPressed: () {
                              context
                                  .read<SimTvBloc>()
                                  .add(const SimTvEvent.payBill());
                            },
                            color: Palette.primary,
                            textColor: Colors.white,
                            child: const Text('Pay Bill'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
        },
      ),
    );
  }
}
