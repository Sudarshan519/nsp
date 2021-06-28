import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

import 'promo_code_page.dart';

class RedeemPage extends StatelessWidget {
  const RedeemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocProvider(
          create: (context) => getIt<RedeemCouponBloc>(),
          child: _redeemBlocConsumer(context),
        ),
      ],
    );
  }

  Widget _redeemBlocConsumer(BuildContext context) {
    return BlocConsumer<RedeemCouponBloc, RedeemCouponState>(
      listener: (context, state) {
        state.failureOrSuccess.fold(
          () => {},
          (either) => {
            either.fold(
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
                showDialog(
                  context: context,
                  builder: (_) => PopUpSuccessOverLay(
                    title: AppConstants.redeemSuccessTitle,
                    message: AppConstants.redeemSuccessMessage,
                    onPressed: () {
                      context.router.navigate(const TabBarRoute());
                    },
                  ),
                );
              },
            ),
          },
        );
      },
      builder: (context, state) {
        if (state.isSubmitting == true) {
          return Expanded(child: loadingPage());
        }
        return _redeemBody(
          context,
          state.key,
        );
      },
    );
  }

  Widget _redeemBody(BuildContext context, Key key) {
    return ShadowBoxWidget(
      key: key,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Redeem",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Please Enter the coupon that you have received.",
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 10),
          BlocBuilder<RedeemCouponBloc, RedeemCouponState>(
            builder: (context, state) => TextWidetWithLabelAndChild(
              title: "Enter Code",
              child: InputTextWidget(
                hintText: "XXXXXXXXXXXX",
                value: state.couponCode,
                onChanged: (value) => context
                    .read<RedeemCouponBloc>()
                    .add(RedeemCouponEvent.changeCouponCode(value)),
              ),
            ),
          ),
          const SizedBox(height: 10),
          applyRedeemCoupon(context),
        ],
      ),
    );
  }

  Widget applyRedeemCoupon(BuildContext context) {
    return BlocBuilder<RedeemCouponBloc, RedeemCouponState>(
      builder: (context, state) {
        return Column(
          children: [
            if (state.coupon == null)
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () => context
                      .read<RedeemCouponBloc>()
                      .add(const RedeemCouponEvent.applyCoupon()),
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Palette.primary,
                    ),
                    child: Center(
                      child: Text(
                        "Apply",
                        style: TextStyle(
                          color: Palette.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            else
              Column(
                children: [
                  PromoCodeItemWidget(
                    coupon: state.coupon!,
                  ),
                  const SizedBox(height: 10),
                  if (!(state.coupon?.isReward ?? true))
                    Column(
                      children: [
                        Text(
                          "Please use this promocode in the product page to redeem",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Palette.primary,
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => context
                            .read<RedeemCouponBloc>()
                            .add(const RedeemCouponEvent.reset()),
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Palette.dividerColor),
                            borderRadius: BorderRadius.circular(20),
                            color: Palette.white,
                          ),
                          child: Center(
                            child: Text(
                              "Reset",
                              style: TextStyle(
                                color: Palette.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      if (state.coupon?.isReward ?? false)
                        InkWell(
                          onTap: () => context
                              .read<RedeemCouponBloc>()
                              .add(const RedeemCouponEvent.redeemCoupon()),
                          child: Container(
                            height: 40,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Palette.primary,
                            ),
                            child: Center(
                              child: Text(
                                "Redeem",
                                style: TextStyle(
                                  color: Palette.white,
                                ),
                              ),
                            ),
                          ),
                        )
                      else
                        const SizedBox.shrink(),
                    ],
                  )
                ],
              ),
          ],
        );
      },
    );
  }
}
