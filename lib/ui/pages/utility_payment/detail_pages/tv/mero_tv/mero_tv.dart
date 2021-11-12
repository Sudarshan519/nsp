import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/features/utility_payments/presentation/tv/mero_tv/mero_tv_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class MeroTVPage extends StatelessWidget {
  final UtilityPaymentsModel payData;

  const MeroTVPage({Key? key, required this.payData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          payData.name ?? 'TV',
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
    double _conversionRate = 1.067;
    final homedata = getIt<HomePageDataBloc>().homeData;
    if (homedata != null) {
      _conversionRate =
          1 / (homedata.userDetail?.purchaseConversionRate ?? 1.067);
    }
    return BlocProvider(
      create: (context) =>
          getIt<MeroTvBloc>()..add(MeroTvEvent.started(payData.id.toString())),
      child: BlocConsumer<MeroTvBloc, MeroTvState>(
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
              (success) {},
            ),
          );
          if (state.isPaymentComplete) {
            getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());

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
          }
        },
        builder: (context, state) {
          return state.isSubmitting
              ? Container(
                  margin: const EdgeInsets.only(top: 120), child: loadingPage())
              : Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20),
                          BlocBuilder<MeroTvBloc, MeroTvState>(
                            buildWhen: (previous, current) =>
                                previous.customerId != current.customerId,
                            builder: (context, state) {
                              return TextWidetWithLabelAndChild(
                                  title: 'Customer Id',
                                  child: InputTextWidget(
                                      isEnable: state.customerInfo == null,
                                      textInputType: TextInputType.number,
                                      maxlength: 20,
                                      hintText: 'XXXXXXXXXX',
                                      onChanged: (id) {
                                        context.read<MeroTvBloc>().add(
                                            MeroTvEvent.changeCustomerId(id));
                                      },
                                      value: state.customerId));
                            },
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          BlocBuilder<MeroTvBloc, MeroTvState>(
                            buildWhen: (previous, current) =>
                                previous.selectedPackage !=
                                current.selectedPackage,
                            builder: (context, state) {
                              return state.customerInfo == null
                                  ? const SizedBox()
                                  : Column(
                                      children: [
                                        infoView('Customer Name',
                                            state.customerInfo?.customerName),
                                        infoView(
                                            'Due Date',
                                            DateTimeFormatter.formatDate(
                                                state.customerInfo?.dueDate ??
                                                    '')),
                                        infoView(
                                            'Amount NPR',
                                            state.selectedPackage?.amount
                                                    .toString() ??
                                                'Select package'),
                                        infoView(
                                            'Amount JPY',
                                            state.selectedPackage == null
                                                ? 'Select package'
                                                : (state.selectedPackage!
                                                            .amount /
                                                        _conversionRate)
                                                    .toStringAsFixed(1)),
                                        const SizedBox(height: 8),
                                        TextWidetWithLabelAndChild(
                                            title: 'Package',
                                            child: CustomDropDownWidget(
                                                hintText: state.selectedPackage
                                                        ?.packageName ??
                                                    'Select package',
                                                options: state
                                                    .customerInfo!.packages
                                                    .map((e) => e.packageName)
                                                    .toList(),
                                                onChanged: (s) {
                                                  if (s.isNotEmpty) {
                                                    final package = state
                                                        .customerInfo!.packages
                                                        .firstWhere((element) =>
                                                            element.packageName
                                                                .contains(s));

                                                    context
                                                        .read<MeroTvBloc>()
                                                        .add(MeroTvEvent
                                                            .changePackage(
                                                                package));
                                                  } else {
                                                    context
                                                        .read<MeroTvBloc>()
                                                        .add(const MeroTvEvent
                                                                .changePackage(
                                                            null));
                                                  }
                                                })),
                                      ],
                                    );
                            },
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            onPressed: () {
                              context.read<MeroTvBloc>().add(
                                  state.customerInfo == null
                                      ? const MeroTvEvent.enquire()
                                      : const MeroTvEvent.payBill());
                            },
                            color: Palette.primary,
                            textColor: Colors.white,
                            child: Text(state.customerInfo == null
                                ? 'Enquire'
                                : 'Pay Bill'),
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

  Widget infoView(String title, String? value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(value ?? ''),
        ],
      ),
    );
  }
}
