import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
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
import 'package:wallet_app/utils/currency_formater.dart';

class TopUpPage extends StatefulWidget {
  final int index;

  final double balance;
  final double conversionRate;
  final List<UtilityPaymentsModel> paymentData;

  const TopUpPage({
    Key? key,
    required this.balance,
    required this.conversionRate,
    required this.index,
    required this.paymentData,
  }) : super(key: key);

  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  late bool _isConfirmPage;
  late bool _hasCouponCode;
  CouponCode? _coupon;

  @override
  void initState() {
    _isConfirmPage = false;
    _hasCouponCode = false;
    _coupon = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final payData = widget.paymentData[widget.index];
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<TopUpBalanceInMobileBloc>()
            ..add(
              TopUpBalanceInMobileEvent.setCashbackpercentage(
                payData.cashbackPer ?? 0.0,
              ),
            )
            ..add(
              TopUpBalanceInMobileEvent.setRewardPoint(
                payData.rewardPoint ?? 0.0,
              ),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<VerifyCouponBloc>()
            ..add(
              VerifyCouponEvent.setInitialState(
                productType: 'utility',
                productId: payData.id ?? 0,
              ),
            ),
        ),
      ],
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
            const BalanceWidget(),
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
              getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());
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
            _MobileNumberTextField(widget.paymentData),
            _TypeOfNumber(widget.paymentData),
            _AmountTextField(
              conversionRate: widget.conversionRate,
            ),
            const SizedBox(height: 20),
            CouponCodeWidget(
              hasCouponCode: _hasCouponCode,
              callback: () {
                setState(() {
                  _hasCouponCode = !_hasCouponCode;
                });
              },
              validCoupon: (couponCode) {
                setState(() {
                  _coupon = couponCode;
                });
                context.read<TopUpBalanceInMobileBloc>().add(
                      TopUpBalanceInMobileEvent.changeCoupon(
                          couponCode?.couponCode ?? ''),
                    );

                context.read<TopUpBalanceInMobileBloc>().add(
                      TopUpBalanceInMobileEvent.setDiscountpercentage(
                          double.parse(couponCode?.cashback ?? '0.0')),
                    );

                context.read<TopUpBalanceInMobileBloc>().add(
                      TopUpBalanceInMobileEvent.setRewardPointFromCoupon(
                          double.parse(couponCode?.rewardPoint ?? '0.0')),
                    );
              },
            ),
            const SizedBox(height: 20),
            _TransactionDetail(
              conversionRate: widget.conversionRate,
            ),
            const SizedBox(height: 20),
            _ProceedButton(
              callback: () {
                final int amt = int.parse(amount);

                if (amt < 10) {
                  FlushbarHelper.createError(
                          message: 'Amount be at least NPR 10')
                      .show(context);
                  return;
                } else if (amt > widget.balance) {
                  FlushbarHelper.createError(message: 'Insufficient balance!')
                      .show(context);
                } else {
                  setState(() {
                    _isConfirmPage = true;
                  });
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget topupConfirmationbody(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
        builder: (context, state) {
          double doubleAmount = 0.0;
          try {
            doubleAmount = double.parse(state.amount);
          } catch (ex) {
            debugPrint(ex.toString());
            return SizedBox.fromSize();
          }

          // final discountAmount =
          //     doubleAmount * (state.discountPercentage / 100);
          // final cashbackAmount =
          //     doubleAmount * (state.cashbackPercentage / 100);

          final rewardPoint = doubleAmount * (state.rewardPoint / 100);

          final discountAmount = doubleAmount *
              ((state.discountPercentage + state.cashbackPercentage) / 100);

          doubleAmount = doubleAmount - discountAmount;

          final conversionValue = doubleAmount / widget.conversionRate;
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
                if (state.cashbackPercentage > 0)
                  Column(
                    children: [
                      _TransactionDetailRow(
                        title: 'Cashback',
                        value: "${state.cashbackPercentage} %",
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                if (state.discountPercentage > 0)
                  Column(
                    children: [
                      _TransactionDetailRow(
                        title: 'Discount cashback',
                        value: "${state.discountPercentage} %",
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                if (state.rewardPoint > 0 || state.rewardPointFromCoupon > 0)
                  Column(
                    children: [
                      _TransactionDetailRow(
                        title: 'Reward Points',
                        value:
                            '${(rewardPoint + state.rewardPointFromCoupon).toStringAsFixed(0)} Pts.',
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                const SizedBox(height: 5),
                _TransactionDetailRow(
                  title: 'Transaction Amount (NPR)',
                  value:
                      currencyFormatter(value: doubleAmount, showSymbol: false),
                ),
                const SizedBox(height: 5),
                _TransactionDetailRow(
                  title: 'Transaction Amount (JPY)',
                  value: currencyFormatterString(
                      value: conversionValue.toStringAsFixed(0),
                      showSymbol: false),
                ),
                const SizedBox(height: 40),
                const _ConfirmButton(),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}

class CouponCodeWidget extends StatelessWidget {
  const CouponCodeWidget({
    Key? key,
    required this.hasCouponCode,
    required this.callback,
    required this.validCoupon,
  }) : super(key: key);

  final bool hasCouponCode;
  final Function() callback;
  final Function(CouponCode?) validCoupon;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty ||
            state.type.isEmpty ||
            state.amount.isEmpty) {
          return const SizedBox.shrink();
        }
        return _buildCoupon(context);
      },
    );
  }

  Widget _buildCoupon(BuildContext context) {
    if (!hasCouponCode) {
      return InkWell(
        onTap: callback,
        child: Container(
          height: 30,
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(
                color: Palette.primary,
              ),
              borderRadius: BorderRadius.circular(15.0)),
          child: Center(
            child: Text(
              "I have a coupon",
              style: TextStyle(
                color: Palette.primary,
              ),
            ),
          ),
        ),
      );
    }
    return _couponBlocBuilder(context);
  }

  Widget _couponBlocBuilder(BuildContext context) {
    return BlocConsumer<VerifyCouponBloc, VerifyCouponState>(
      listener: (context, state) {
        state.failureOrSuccess.fold(
          () => {},
          (either) => either.fold(
            (failure) {
              validCoupon(null);
              FlushbarHelper.createError(
                  message: failure.map(
                serverError: (error) => error.message,
                invalidUser: (_) => AppConstants.someThingWentWrong,
                noInternetConnection: (_) => AppConstants.noNetwork,
              )).show(context);
            },
            (coupon) {
              validCoupon(coupon);
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting == true) {
          return loadingPage();
        }
        return _couponEdit(context);
      },
    );
  }

  Widget _couponEdit(BuildContext context) {
    return BlocBuilder<VerifyCouponBloc, VerifyCouponState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Palette.dividerColor.withOpacity(0.4),
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    callback();
                    validCoupon(null);
                  },
                  child: const Icon(
                    Icons.clear,
                    size: 15,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Palette.dividerColor,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                          color: Palette.white,
                        ),
                        child: InputTextWidget(
                          hintText: "Coupon Code",
                          value: state.couponCode,
                          onChanged: (value) => context
                              .read<VerifyCouponBloc>()
                              .add(VerifyCouponEvent.changeCouponCode(value)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        validCoupon(null);
                        context
                            .read<VerifyCouponBloc>()
                            .add(const VerifyCouponEvent.verifyCoupon());
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Palette.primary,
                        ),
                        child: Center(
                          child: Text(
                            "Check",
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
            ],
          ),
        );
      },
    );
  }
}

class _MobileNumberTextField extends StatelessWidget {
  final List<UtilityPaymentsModel> paymentData;
  const _MobileNumberTextField(this.paymentData);

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
          .replaceAll('+977', '')
          .replaceAll('+', '')
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll('-', '')
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
                            conversionValue.toStringAsFixed(0)));
                  } else {
                    context.read<TopUpBalanceInMobileBloc>().add(
                        TopUpBalanceInMobileEvent.changeconvertedJpyAmount(
                            value));
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class _TypeOfNumber extends StatelessWidget {
  final List<UtilityPaymentsModel> paymentData;
  const _TypeOfNumber(this.paymentData);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty || state.type.isEmpty) {
          return const SizedBox.shrink();
        }
        final searchList = paymentData
            .where((element) => element.name
                .toString()
                .toLowerCase()
                .contains(state.type.toLowerCase()))
            .toList();

        if (searchList.isNotEmpty) {
          final id = searchList.first.id ?? 0;
          context
              .read<TopUpBalanceInMobileBloc>()
              .add(TopUpBalanceInMobileEvent.setProductId("$id"));
          getIt<VerifyCouponBloc>().add(
            VerifyCouponEvent.setInitialState(
              productType: 'utility',
              productId: id,
            ),
          );
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
        double doubleAmount = 0.0;
        try {
          doubleAmount = double.parse(state.amount);
        } catch (ex) {
          debugPrint(ex.toString());
          return SizedBox.fromSize();
        }

        final discountAmount = doubleAmount * (state.discountPercentage / 100);
        final cashbackAmount = doubleAmount * (state.cashbackPercentage / 100);

        doubleAmount = doubleAmount - (discountAmount + cashbackAmount);
        final conversionValue = doubleAmount / conversionRate;
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
                        currencyFormatterString(
                            value: state.amount, showSymbol: false),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  if (state.cashbackPercentage > 0)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Cashback',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                            Text(
                              "${state.cashbackPercentage} %",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  if (state.discountPercentage > 0)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Discount cashback',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                            Text(
                              "${state.discountPercentage} %",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  if (state.rewardPoint > 0 || state.rewardPointFromCoupon > 0)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Reward Points',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                            Text(
                              "${state.rewardPoint + state.rewardPointFromCoupon} Pts.",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Palette.white,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  DashedLineWidget(
                    color: Palette.white,
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Paying Amount (NPR)',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                      Text(
                        currencyFormatter(
                            value: doubleAmount, showSymbol: false),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Palette.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
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
                        currencyFormatterString(
                            value: conversionValue.toStringAsFixed(0),
                            showSymbol: false),
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

class _CouponDetail extends StatelessWidget {
  final CouponCode coupon;
  const _CouponDetail({
    Key? key,
    required this.coupon,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
                    'Coupon Code',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Palette.white,
                    ),
                  ),
                  Text(
                    coupon.couponCode ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cashback:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Palette.white,
                    ),
                  ),
                  Text(
                    coupon.cashback ?? '',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Palette.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reward Point:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Palette.white,
                    ),
                  ),
                  Text(
                    coupon.rewardPoint ?? '',
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
          onTap: () {
            context
                .read<TopUpBalanceInMobileBloc>()
                .add(const TopUpBalanceInMobileEvent.validate());

            if (state.number.isEmpty ||
                state.type.isEmpty ||
                state.amount.isEmpty) {
              return;
            }

            callback();
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
          value:
              currencyFormatterString(value: state.amount, showSymbol: false),
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
          onTap: () {
            if (state.productId.isNotEmpty) {
              context
                  .read<TopUpBalanceInMobileBloc>()
                  .add(const TopUpBalanceInMobileEvent.topup());
            } else {
              //TODO: show no product found or mismatch
            }
          },
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
