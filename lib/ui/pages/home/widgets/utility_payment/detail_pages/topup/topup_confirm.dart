import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class TopupConfirmPage extends StatelessWidget {
  final String balance;
  final TopUpBalanceInMobileBloc bloc;

  const TopupConfirmPage({
    Key? key,
    required this.balance,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Topup",
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
            BalanceWidget(balance: balance),
            _blocConsumer(context, bloc),
          ],
        ),
      ),
    );
  }

  Widget _blocConsumer(BuildContext context, TopUpBalanceInMobileBloc bloc) {
    return BlocConsumer<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
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
              getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());
              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: AppConstants.topUpSuccessTitle,
                  message: AppConstants.topUpSuccessMessage,
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
        if (state.isSubmitting) {
          return Expanded(
            child: loadingPage(),
          );
        }
        return body(
          context,
          bloc,
        );
      },
    );
  }

  Widget body(BuildContext context, TopUpBalanceInMobileBloc bloc) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          _MobileNumberField(),
          const SizedBox(height: 5),
          _TransactionAmountInNPRField(),
          const SizedBox(height: 5),
          _TransactionAmountInJPYField(),
          const SizedBox(height: 40),
          _ConfirmButton(bloc: bloc),
        ],
      ),
    );
  }
}

class _MobileNumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return _TransactionDetailRow(
          title: 'Mobile Number',
          value: state.number,
          isValueBold: true,
        );
      },
    );
  }
}

class _TransactionAmountInNPRField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return _TransactionDetailRow(
          title: 'Transcation Amount (NPR)',
          value: state.amount,
        );
      },
    );
  }
}

class _TransactionAmountInJPYField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return _TransactionDetailRow(
          title: 'Transcation Amount (JPY)',
          value: '${double.parse(state.amount) * 0.94}',
        );
      },
    );
  }
}

class _TransactionDetailRow extends StatelessWidget {
  final String title;
  final bool isTitleBold;
  final String value;
  final bool isValueBold;

  const _TransactionDetailRow({
    Key? key,
    required this.title,
    this.isTitleBold = false,
    required this.value,
    this.isValueBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Palette.dividerColor.withOpacity(0.2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isTitleBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isValueBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}

class _ConfirmButton extends StatelessWidget {
  final TopUpBalanceInMobileBloc bloc;

  const _ConfirmButton({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context
              .read<TopUpBalanceInMobileBloc>()
              .add(const TopUpBalanceInMobileEvent.topup()),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Palette.primary,
            ),
            child: Center(
              child: Text(
                "Confirm",
                style: TextStyle(
                  color: Palette.white,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
