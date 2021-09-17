import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wallet_app/features/utility_payments/presentation/electricity/bloc/nea_payment_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/electricity/nea_offices/nea_offices_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_searchable_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/currency_formater.dart';
import 'package:wallet_app/utils/date_time_formatter.dart';

class NEAPaymentPage extends StatelessWidget {
  final UtilityPaymentsModel payData;
  const NEAPaymentPage({Key? key, required this.payData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) =>
            getIt<NeaOfficesBloc>()..add(const NeaOfficesEvent.fetch()),
        child: BlocBuilder<NeaOfficesBloc, NeaOfficesState>(
          builder: (context, state) {
            return state.map(
                loading: (_) => loadingPage(),
                loaded: (data) {
                  return BlocProvider(
                    create: (context) => getIt<NeaPaymentBloc>()
                      ..add(NeaPaymentEvent.started(
                          data.offices, payData.id.toString())),
                    child: _NEABody(),
                  );
                },
                failure: (fail) {
                  return const Center(child: Text('Failed to load data'));
                });
          },
        ),
      ),
    );
  }
}

class _NEABody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _neaBody(NeaPaymentState state) {
      if (state.isLoading) return loadingPage();

      if (state.customerInfo != null) {
        final customer = state.customerInfo!;
        return SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ShadowBoxWidget(
              margin: const EdgeInsets.all(12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${customer.customerName}'),
                    const SizedBox(height: 8),
                    Text(
                        'due date: ${DateTimeFormatter.formatDate(customer.dueDate)}'),
                    const SizedBox(height: 8),
                    Text(
                        'amount: ${currencyFormatter(value: double.parse(customer.amount) / 100, showSymbol: false)}'),
                  ]),
            ),
          ),
          const SizedBox(height: 20),
          CustomButton(
              title: 'Pay Bill',
              onTap: () {
                context
                    .read<NeaPaymentBloc>()
                    .add(const NeaPaymentEvent.payBill());
              })
        ]));
      }

      return SingleChildScrollView(
        child: Column(
          children: [
            ShadowBoxWidget(
              margin: const EdgeInsets.all(12),
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
                      options: state.offices.map((e) => e.officeName).toList(),
                      onChanged: (officeName) {
                        final office = state.offices
                            .where(
                                (element) => element.officeName == officeName)
                            .first;
                        context
                            .read<NeaPaymentBloc>()
                            .add(NeaPaymentEvent.changeOffice(office));
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextWidetWithLabelAndChild(
                    title: 'Customer ID',
                    child: InputTextWidget(
                      hintText: 'XXXXX',
                      onChanged: (val) {
                        context
                            .read<NeaPaymentBloc>()
                            .add(NeaPaymentEvent.customerID(val.trim()));
                      },
                      value: state.customerId,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextWidetWithLabelAndChild(
                    title: 'SC. No.',
                    child: InputTextWidget(
                      hintText: 'XXX.XXX.XXX',
                      onChanged: (val) {
                        context
                            .read<NeaPaymentBloc>()
                            .add(NeaPaymentEvent.changeScNum(val.trim()));
                      },
                      value: state.scNo,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            CustomButton(
                title: 'Proceed',
                onTap: () {
                  context
                      .read<NeaPaymentBloc>()
                      .add(const NeaPaymentEvent.enquire());
                })
          ],
        ),
      );
    }

    return BlocConsumer<NeaPaymentBloc, NeaPaymentState>(
        listener: (context, state) {
      if (state.paymentComplete) {
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
                        .read<NeaPaymentBloc>()
                        .add(const NeaPaymentEvent.resetCustomerInfo());
                  }
                }),
            title: const Text(
              'NEA Bill payment',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: _neaBody(state));
    });
  }
}
