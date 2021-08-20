import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart';
import 'package:wallet_app/features/home/domain/entities/home_data.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/balance_widgets.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/coupon_code_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/currency_formater.dart';

import 'widgets/amount_text_field.dart';
import 'widgets/mobile_number_input.dart';
import 'widgets/topup_transaction_detail.dart';

class TopUpPage extends StatefulWidget {
  final UtilityPaymentsModel payData;

  const TopUpPage({Key? key, required this.payData}) : super(key: key);

  @override
  _TopUpPageState createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  late bool _isConfirmPage;
  late bool _hasCouponCode;
  double _balanceJPY = 0;
  double _conversionRate = 1.067;
  late UtilityPaymentsModel _payData;

  List<UtilityPaymentsModel> paymentData = [];

  @override
  void initState() {
    _isConfirmPage = false;
    _hasCouponCode = false;
    super.initState();
    _payData = widget.payData;

    final homedata = getIt<HomePageDataBloc>().homeData;
    if (homedata != null) {
      _conversionRate =
          1 / (homedata.userDetail?.purchaseConversionRate ?? 1.067);

      paymentData = List<UtilityPaymentsModel>.from((homedata.homeData!
              .firstWhere(
                  (element) => element.type.toString().contains('utility'))
              .data as Iterable)
          .map(
              (x) => UtilityPaymentsModel.fromJson(x as Map<String, dynamic>)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBalanceBloc, GetBalanceState>(
      buildWhen: (p, c) => p.hashCode != c.hashCode,
      builder: (context, state) {
        return state.map(
            loading: (_) =>
                Container(color: Colors.white, child: loadingPage()),
            loaded: (loaded) {
              _balanceJPY = context.read<GetBalanceBloc>().userbalance;
              return MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => getIt<TopUpBalanceInMobileBloc>()
                      ..add(
                        TopUpBalanceInMobileEvent.setCashbackpercentage(
                          _payData.cashbackPer ?? 0.0,
                        ),
                      )
                      ..add(
                        TopUpBalanceInMobileEvent.setRewardPoint(
                          _payData.rewardPoint ?? 0.0,
                        ),
                      ),
                  ),
                  BlocProvider(
                    create: (context) => getIt<VerifyCouponBloc>()
                      ..add(
                        VerifyCouponEvent.setInitialState(
                          productType: 'utility',
                          productId: _payData.id ?? 0,
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
            },
            failure: (_) =>
                Container(color: Colors.white, child: loadingPage()));
      },
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
          state,
        ));
      },
    );
  }

  Widget couponcodeWidget() {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        if (state.number.isEmpty ||
            state.type.isEmpty ||
            state.amount.isEmpty) {
          return const SizedBox.shrink();
        }

        return CouponCodeWidget(
          hasCouponCode: _hasCouponCode,
          callback: () {
            setState(() {
              _hasCouponCode = !_hasCouponCode;
            });
          },
          validCoupon: (couponCode) {
            setState(() {});
            context.read<TopUpBalanceInMobileBloc>().add(
                  TopUpBalanceInMobileEvent.changeCoupon(
                      couponCode?.couponCode ?? ''),
                );

            context.read<TopUpBalanceInMobileBloc>().add(
                  TopUpBalanceInMobileEvent.setDiscountpercentage(
                      double.parse(couponCode?.cashback ?? '0.0')),
                );
            var doubleAmount = double.parse(state.amount);
            final discountAmount =
                doubleAmount * (state.discountPercentage / 100);
            final cashbackAmount =
                doubleAmount * (state.cashbackPercentage / 100);

            doubleAmount = doubleAmount - (discountAmount + cashbackAmount);

            context.read<TopUpBalanceInMobileBloc>().add(
                  TopUpBalanceInMobileEvent.setRewardPointFromCoupon(
                      couponCode?.getActualRewardPoint(doubleAmount) ?? 0),
                );
          },
        );
      },
    );
  }

  Widget topupInformationbody(
      BuildContext context, TopUpBalanceInMobileState state) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            MobileNumberTextField(paymentData),
            TypeOfNumber(paymentData),
            if (state.type == Values.SMARTCELL)
              AmountDropDownField(
                conversionRate: _conversionRate,
              )
            else
              AmountTextField(
                conversionRate: _conversionRate,
              ),
            const SizedBox(height: 20),
            couponcodeWidget(),
            const SizedBox(height: 20),
            TransactionDetail(
              conversionRate: _conversionRate,
            ),
            const SizedBox(height: 20),
            ProceedButton(
              callback: () {
                try {
                  final int amtNPR = int.parse(state.amount);
                  final int amtJPY = amtNPR ~/ _conversionRate;

                  if (amtNPR < Values.MIN_RECHARGE ||
                      amtNPR > Values.MAX_RECHARGE) {
                    FlushbarHelper.createError(
                            message:
                                'Amount be at least NPR ${Values.MIN_RECHARGE} and less than ${Values.MAX_RECHARGE}')
                        .show(context);
                    return;
                  } else if (amtJPY > _balanceJPY) {
                    FlushbarHelper.createError(message: 'Insufficient balance!')
                        .show(context);
                  } else {
                    setState(() {
                      _isConfirmPage = true;
                    });
                  }
                } catch (e) {
                  FlushbarHelper.createError(message: 'Invalid Amount!')
                      .show(context);
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

          // final discountAmount = doubleAmount *
          //     ((state.discountPercentage + state.cashbackPercentage) / 100);

          doubleAmount = amtAfterDiscountDeduction(state);

          final rewardPoint = doubleAmount * (state.rewardPoint / 100);

          final conversionValue = doubleAmount / _conversionRate;
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                MobileNumberField(),
                const SizedBox(height: 5),
                TransactionAmountInNPRField(),
                const SizedBox(height: 5),
                if (state.cashbackPercentage > 0)
                  Column(
                    children: [
                      TransactionDetailRow(
                        title: 'Cashback',
                        value: "${state.cashbackPercentage} %",
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                if (state.discountPercentage > 0)
                  Column(
                    children: [
                      TransactionDetailRow(
                        title: 'Discount cashback',
                        value: "${state.discountPercentage} %",
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                if (state.rewardPoint > 0 || state.rewardPointFromCoupon > 0)
                  Column(
                    children: [
                      TransactionDetailRow(
                        title: 'Reward Points',
                        value:
                            "${(rewardPoint + state.rewardPointFromCoupon).toStringAsFixed(1)} Pts.",
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                const SizedBox(height: 5),
                TransactionDetailRow(
                  title: 'Transaction Amount (NPR)',
                  value: currencyFormatter(
                    value: doubleAmount,
                    showSymbol: false,
                    decimalDigits: 2,
                  ),
                ),
                const SizedBox(height: 5),
                TransactionDetailRow(
                  title: 'Transaction Amount (JPY)',
                  value: currencyFormatter(
                    value: conversionValue,
                    decimalDigits: 2,
                    showSymbol: false,
                  ),
                ),
                const SizedBox(height: 40),
                const ConfirmButton(),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}

double amtAfterDiscountDeduction(TopUpBalanceInMobileState state) {
  var doubleAmount = double.parse(state.amount);
  try {
    final discountAmount = doubleAmount * (state.discountPercentage / 100);
    final cashbackAmount = doubleAmount * (state.cashbackPercentage / 100);

    doubleAmount = doubleAmount - (discountAmount + cashbackAmount);
    return doubleAmount;
  } catch (e) {
    return 0;
  }
}
