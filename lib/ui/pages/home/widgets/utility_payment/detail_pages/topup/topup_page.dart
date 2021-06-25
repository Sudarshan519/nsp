import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/dashed_line.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class TopUpPage extends StatefulWidget {
  final String balance;
  final double conversionRate;

  const TopUpPage({
    Key? key,
    required this.balance,
    required this.conversionRate,
  }) : super(key: key);

  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  late bool _isConfirmPage;

  @override
  void initState() {
    _isConfirmPage = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<TopUpBalanceInMobileBloc>(),
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
            onPressed: () {
              if (_isConfirmPage) {
                setState(() {
                  _isConfirmPage = false;
                });
              } else {
                context.popRoute();
              }
            },
          ),
          centerTitle: true,
          backgroundColor: Palette.primary,
          elevation: 0,
        ),
        body: Column(
          children: [
            const BalanceBlocWidget(),
            _blocConsumer(context),
          ],
        ),
      ),
    );
  }

  Widget _blocConsumer(BuildContext context) {
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
              getIt<TransactionBloc>()
                  .add(const TransactionEvent.fetchTransactionData());
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

        if (_isConfirmPage) {
          return Expanded(child: topupConfirmationbody(context));
        }
        return Expanded(
            child: topupInformationbody(
          context,
          state.amount,
        ));
      },
    );
  }

  Widget topupInformationbody(BuildContext context, String amount) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _MobileNumberTextField(),
            _TypeOfNumber(),
            _AmountTextField(
              conversionRate: widget.conversionRate,
            ),
            _TransactionDetail(
              conversionRate: widget.conversionRate,
            ),
            const SizedBox(height: 20),
            _ProceedButton(
              callback: () {
                final double bal = double.parse(
                    widget.balance.split(' ').last.replaceAll(',', ''));
                final double amt = double.parse(amount);
                if (amt > bal) {
                  FlushbarHelper.createError(message: 'Insufficient balance!')
                      .show(context);
                } else {
                  setState(() {
                    _isConfirmPage = true;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget topupConfirmationbody(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _MobileNumberField(),
            const SizedBox(height: 5),
            _TransactionAmountInNPRField(),
            const SizedBox(height: 5),
            _TransactionAmountInJPYField(
              conversionRate: widget.conversionRate,
            ),
            const SizedBox(height: 40),
            const _ConfirmButton(),
          ],
        ),
      ),
    );
  }
}

class _MobileNumberTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //get phone contacts
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              key: state.key,
              child: TextWidetWithLabelAndChild(
                title: "Mobile (10 digit)",
                child: InputTextWidget(
                  hintText: "98XXXXXXXX",
                  textInputType: TextInputType.number,
                  value: state.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  onChanged: (value) => context
                      .read<TopUpBalanceInMobileBloc>()
                      .add(TopUpBalanceInMobileEvent.changePhoneNumber(value)),
                  suffixIcon: InkWell(
                    onTap: () async {
                      final phoneNumber = await handleContact(context);
                      context.read<TopUpBalanceInMobileBloc>().add(
                          TopUpBalanceInMobileEvent.changePhoneNumberViaContact(
                              phoneNumber));
                    },
                    child: SvgPicture.asset(
                      "assets/images/home/utility-payment/icon-Phone-book.svg",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Column(
              children: [
                const SizedBox(height: 13),
                CircleAvatar(
                  backgroundColor: Palette.primary,
                  radius: 20,
                  child: SvgPicture.asset(
                    "assets/images/home/utility-payment/icon-Smartphone.svg",
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<String> handleContact(BuildContext context) async {
    final bool hasPermission = await FlutterContactPicker.hasPermission();
    if (!hasPermission) {
      // FlushbarHelper.createError(
      //         message: "Please provide contact read permission")
      //     .show(context);
      // await Future.delayed(const Duration(seconds: 2));
      FlutterContactPicker.requestPermission();
    }
    final PhoneContact contact = await FlutterContactPicker.pickPhoneContact();
    if (contact.phoneNumber != null) {
      final String? number = contact.phoneNumber?.number;
      final String formattedNumber = number
          .toString()
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll('-', '')
          .replaceAll('977', '')
          .replaceAll(' ', '');

      return formattedNumber;
    }
    return "";
  }
}

class _AmountTextField extends StatelessWidget {
  final double conversionRate;

  const _AmountTextField({
    Key? key,
    required this.conversionRate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            TextWidetWithLabelAndChild(
              title: "Amount (in NPR)",
              child: InputTextWidget(
                hintText: "Rs. 100",
                textInputType: TextInputType.number,
                value: state.amount,
                onChanged: (value) {
                  context
                      .read<TopUpBalanceInMobileBloc>()
                      .add(TopUpBalanceInMobileEvent.changeAmount(value));
                  if (value.isNotEmpty) {
                    final conversionValue =
                        double.parse(value) * conversionRate;
                    context.read<TopUpBalanceInMobileBloc>().add(
                        TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
                            conversionValue.toStringAsFixed(2)));
                  } else {
                    context.read<TopUpBalanceInMobileBloc>().add(
                        TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
                            value));
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class _TypeOfNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty || state.type.isEmpty) {
          return const SizedBox.shrink();
        }
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Palette.primary,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Image.asset(
                  //   'assets/images/home/utility-payment/${state.type}.png',
                  //   fit: BoxFit.fitWidth,
                  // ),

                  Text(
                    state.type.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class _TransactionDetail extends StatelessWidget {
  final double conversionRate;

  const _TransactionDetail({
    Key? key,
    required this.conversionRate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty ||
            state.type.isEmpty ||
            state.amount.isEmpty) {
          return const SizedBox.shrink();
        }
        final conversionValue = double.parse(state.amount) * conversionRate;
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              // height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Palette.primary,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Transaction Amount',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                      Text(
                        state.amount,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  DashedLineWidget(
                    color: Palette.white,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Paying Amount (JPY)',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                      Text(
                        conversionValue.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      },
    );
  }
}

class _ProceedButton extends StatelessWidget {
  // final String balance;
  // final TopUpBalanceInMobileBloc bloc;

  final Function callback;

  const _ProceedButton({
    Key? key,
    // required this.balance,
    // required this.bloc,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return InkWell(
          // onTap: () => context
          //     .read<TopUpBalanceInMobileBloc>()
          //     .add(const TopUpBalanceInMobileEvent.topup()),
          onTap: () {
            if (state.number.isEmpty ||
                state.type.isEmpty ||
                state.amount.isEmpty) {
              return;
            }

            callback();
            // context.pushRoute(
            //   TopupConfirmRoute(
            //     balance: balance,
            //     bloc: bloc,
            //   ),
            // );
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
        );
      },
    );
  }
}

//! Class from here are verification page

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
          title: 'Transaction Amount (NPR)',
          value: state.amount,
        );
      },
    );
  }
}

class _TransactionAmountInJPYField extends StatelessWidget {
  final double conversionRate;

  const _TransactionAmountInJPYField({
    Key? key,
    required this.conversionRate,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        final conversionValue = double.parse(state.amount) * conversionRate;
        return _TransactionDetailRow(
          title: 'Transaction Amount (JPY)',
          value: conversionValue.toStringAsFixed(2),
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
  const _ConfirmButton({
    Key? key,
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
