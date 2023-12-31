import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart';
import 'package:wallet_app/features/partner_services/domain/entities/service_packages.dart';
import 'package:wallet_app/features/partner_services/domain/entities/services.dart';
import 'package:wallet_app/features/partner_services/presentation/purchase_package/purchase_package_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/coupon_code_widget.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_confirmation.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/currency_formater.dart';

@RoutePage()
class BuyPackagePage extends StatefulWidget {
  final ServicePackage package;
  final Services services;
  final double cashBackPercent;
  final double rewardPoint;

  const BuyPackagePage({
    Key? key,
    required this.package,
    required this.services,
    required this.cashBackPercent,
    required this.rewardPoint,
  }) : super(key: key);

  @override
  _BuyPackagePageState createState() => _BuyPackagePageState();
}

class _BuyPackagePageState extends State<BuyPackagePage> {
  late bool _hasCouponCode;
  CouponCode? _coupon;

  @override
  void initState() {
    _hasCouponCode = false;
    _coupon = null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<PurchasePackageBloc>()
            ..add(
              PurchasePackageEvent.setInitialState(
                  package: widget.package,
                  cashBackPercent: widget.cashBackPercent,
                  rewardPoint: widget.rewardPoint),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<VerifyCouponBloc>()
            ..add(
              VerifyCouponEvent.setInitialState(
                productType: 'service',
                productId: widget.services.id ?? 0,
              ),
            ),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: const BackButton(
            color: Colors.white,
          ),
          title: Text(widget.package.packageName!,
              style: const TextStyle(
                color: Colors.white,
              )),
        ),
        body: blocConsumer(context),
      ),
    );
  }

  Widget blocConsumer(BuildContext context) {
    return BlocConsumer<PurchasePackageBloc, PurchasePackageState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
            },
            (success) {
              getIt<GetBalanceBloc>().add(const GetBalanceEvent.fetchBalance());
              getIt<TransactionBloc>()
                  .add(const TransactionEvent.fetchTransactionData());
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: AppConstants.paymentSuccessTitle,
                  message: AppConstants.paymentSuccessMessage,
                  onPressed: () {
                    context.router.push(const TabBarRoute());
                  },
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage();
        }
        return SingleChildScrollView(
          key: state.key,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidetWithLabelAndChild(
                  title: 'Customer Name',
                  isRequired: true,
                  child: InputTextWidget(
                    hintText: 'Customer Name',
                    value: state.customerName,
                    onChanged: (value) => context
                        .read<PurchasePackageBloc>()
                        .add(PurchasePackageEvent.changeCustomerName(value)),
                  ),
                ),
                const SizedBox(height: 14),
                TextWidetWithLabelAndChild(
                  title: 'Customer ID / email',
                  isRequired: true,
                  child: InputTextWidget(
                    hintText: 'Customer ID / email',
                    onChanged: (value) => context
                        .read<PurchasePackageBloc>()
                        .add(PurchasePackageEvent.changeCustomerId(value)),
                    value: state.customerId,
                  ),
                ),
                const SizedBox(height: 14),
                TextWidetWithLabelAndChild(
                  title: 'Amount',
                  isRequired: true,
                  child: InputTextWidget(
                    isEnable: false,
                    hintText: currencyFormatter(
                        value: widget.package.packagePrice ?? 0, symbol: '¥'),
                    onChanged: (_) {},
                    value: currencyFormatter(value: state.amount, symbol: '¥'),
                    textInputType: TextInputType.number,
                  ),
                ),
                const SizedBox(height: 14),
                TextWidetWithLabelAndChild(
                  title: 'Remarks',
                  child: TextFormField(
                    initialValue: state.remark,
                    decoration: InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                      hintText: 'Remark',
                      hintStyle: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w300,
                        color: Palette.textFieldPlaceholderColor,
                      ),
                    ),
                    style: TextStyle(
                      color: Palette.blackTextColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.0,
                    ),
                    textInputAction: TextInputAction.done,
                    minLines: 4,
                    maxLines: 4,
                    onChanged: (value) => context
                        .read<PurchasePackageBloc>()
                        .add(PurchasePackageEvent.changeRemark(value)),
                    onEditingComplete: () {},
                  ),
                ),
                const SizedBox(height: 10),
                CouponCodeWidget(
                  hasCouponCode: _hasCouponCode,
                  callback: () {
                    setState(() {
                      _hasCouponCode = !_hasCouponCode;
                    });
                  },
                  validCoupon: (couponCode) {
                    context.read<PurchasePackageBloc>().add(
                        PurchasePackageEvent.changeCoupon(
                            couponCode?.couponCode ?? ''));
                    context.read<PurchasePackageBloc>().add(
                        PurchasePackageEvent.setDiscountpercentage(
                            double.parse(couponCode?.cashback ?? '0.0')));
                    context.read<PurchasePackageBloc>().add(
                        PurchasePackageEvent.setRewardPointFromCoupon(
                            double.parse(couponCode?.rewardPoint ?? '0.0')));
                    setState(() {
                      _coupon = couponCode;
                    });
                  },
                ),
                const _TransactionDetail(),
                InkWell(
                  onTap: () {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => PopUpConfirmation(
                        message: 'Are you sure to make the purchase?',
                        onConfirmed: () {
                          context.read<PurchasePackageBloc>().add(
                                const PurchasePackageEvent.purchase(),
                              );
                          context.popRoute();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Palette.primary,
                    ),
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Palette.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class _TransactionDetail extends StatelessWidget {
  const _TransactionDetail({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PurchasePackageBloc, PurchasePackageState>(
      builder: (context, state) {
        if (state.cashbackPercentage > 0 ||
            state.discountPercentage > 0 ||
            state.rewardPoint > 0 ||
            state.rewardPointFromCoupon > 0) {
          final rewardPoint = state.amount * (state.rewardPoint / 100);

          final discountAmount = state.amount *
              ((state.discountPercentage + state.cashbackPercentage) / 100);

          final doubleAmount = state.amount - discountAmount;
          final payingAmount =
              currencyFormatterString(value: doubleAmount.toStringAsFixed(0));

          return Column(
            children: [
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                // height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Palette.primary,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
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
                                '${state.cashbackPercentage}%',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
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
                                'Discount Cashback',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Palette.white,
                                ),
                              ),
                              Text(
                                '${state.discountPercentage}%',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Palette.white,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    if (state.rewardPoint > 0 ||
                        state.rewardPointFromCoupon > 0)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Reward Points:',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Palette.white,
                            ),
                          ),
                          Text(
                            '${(rewardPoint + state.rewardPointFromCoupon).toStringAsFixed(0)} Pts.',
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
                          'Total Paying Amount',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Palette.white,
                          ),
                        ),
                        Text(
                          payingAmount,
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
        return const SizedBox(height: 20);
      },
    );
  }
}
