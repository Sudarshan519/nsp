import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/features/utility_payments/presentation/khanepani/bloc/khanepani_payment_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/khanepani/khanepani_offices/khanepani_offices_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/pages/utility_payment/detail_pages/widgets/bill_info_view.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/error_widgets.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class KhanepaniPaymentPage extends StatelessWidget {
  final UtilityPaymentsModel payData;
  const KhanepaniPaymentPage({Key? key, required this.payData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<KhanepaniOfficesBloc>()
            ..add(KhanepaniOfficesEvent.fetch(payData.id.toString())),
          child: BlocBuilder<KhanepaniOfficesBloc, KhanepaniOfficesState>(
            builder: (context, state) {
              return state.map(
                  loading: (_) => loadingPage(),
                  loaded: (data) {
                    return BlocProvider(
                      create: (context) => getIt<KhanepaniPaymentBloc>()
                        ..add(KhanepaniPaymentEvent.started(
                            data.offices, payData.id.toString())),
                      child: _NEABody(),
                    );
                  },
                  failure: (fail) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BackButton(
                          color: Colors.black,
                        ),
                        const SizedBox(height: 70),
                        errorView(
                            errorType: ErrorType.other,
                            onRefresh: () {
                              context.read<KhanepaniOfficesBloc>().add(
                                  KhanepaniOfficesEvent.fetch(
                                      payData.id.toString()));
                            }),
                      ],
                    );
                  });
            },
          ),
        ),
      ),
    );
  }
}

class _NEABody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _neaBody(KhanepaniPaymentState state) {
      if (state.isLoading) return loadingPage();

      if (state.customerInfo != null) {
        return BillInfoView(
            customer: state.customerInfo!,
            onBillPay: () {
              context
                  .read<KhanepaniPaymentBloc>()
                  .add(const KhanepaniPaymentEvent.payBill());
            });
      }

      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ShadowBoxWidget(
                child: Column(
                  children: [
                    TextWidetWithLabelAndChild(
                      title: 'Select Counter Office',
                      child: CustomSearchableDropDownWidget(
                        value: state.selectedOffice.officeName.isEmpty
                            ? null
                            : state.selectedOffice.officeName,
                        hintText: state.selectedOffice.officeName.isEmpty
                            ? 'Select Counter'
                            : state.selectedOffice.officeName,
                        options:
                            state.offices.map((e) => e.officeName).toList(),
                        onChanged: (officeName) {
                          final office = state.offices
                              .where(
                                  (element) => element.officeName == officeName)
                              .first;
                          context
                              .read<KhanepaniPaymentBloc>()
                              .add(KhanepaniPaymentEvent.changeOffice(office));
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextWidetWithLabelAndChild(
                      title: 'Customer ID',
                      child: InputTextWidget(
                        hintText: '',
                        onChanged: (val) {
                          context.read<KhanepaniPaymentBloc>().add(
                              KhanepaniPaymentEvent.customerID(val.trim()));
                        },
                        value: state.customerId,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextWidetWithLabelAndChild(
                      title: 'Account Number',
                      child: InputTextWidget(
                        hintText: '',
                        onChanged: (val) {
                          context.read<KhanepaniPaymentBloc>().add(
                              KhanepaniPaymentEvent.changeScNum(val.trim()));
                        },
                        value: state.scNo,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 22),
              InkWell(
                onTap: () {
                  context
                      .read<KhanepaniPaymentBloc>()
                      .add(const KhanepaniPaymentEvent.enquire());
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Palette.primary,
                  ),
                  child: Center(
                    child: Text(
                      "Proceed",
                      style: TextStyle(
                        color: Palette.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return BlocConsumer<KhanepaniPaymentBloc, KhanepaniPaymentState>(
        listener: (context, state) {
      if (state.paymentComplete) {
        getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());

        getIt<TransactionBloc>()
            .add(const TransactionEvent.fetchTransactionData());
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (_) => PopUpSuccessOverLay(
            title: "Success",
            message: 'Your electricity bill has been paid!',
            onPressed: () {
              context.router.navigate(const TabBarRoute());
            },
          ),
        );
      }

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
    }, builder: (context, state) {
      return Scaffold(
          appBar: AppBar(
            leading: BackButton(
                color: Colors.white,
                onPressed: () {
                  if (state.customerInfo == null) {
                    context.popRoute();
                  } else {
                    context
                        .read<KhanepaniPaymentBloc>()
                        .add(const KhanepaniPaymentEvent.resetCustomerInfo());
                  }
                }),
            title: const Text(
              'Water Supply Bill',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: _neaBody(state));
    });
  }
}
