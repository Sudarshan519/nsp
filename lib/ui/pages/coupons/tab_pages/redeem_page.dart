import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/coupon/presentation/redeem_coupon/redeem_coupon_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

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
                          noInternetConnection: (error) =>
                              AppConstants.noNetwork,
                          serverError: (error) => error.message,
                          invalidUser: (error) =>
                              AppConstants.someThingWentWrong,
                        ),
                      ).show(context);
                    },
                    (success) {},
                  ),
                });
      },
      builder: (context, state) {
        if (state.isSubmitting == true) {
          return loadingPage();
        }
        return _redeemBody(context);
      },
    );
  }

  Widget _redeemBody(BuildContext context) {
    return BlocBuilder<RedeemCouponBloc, RedeemCouponState>(
      builder: (context, state) {
        return ShadowBoxWidget(
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
              TextWidetWithLabelAndChild(
                title: "Enter Code",
                child: InputTextWidget(
                  hintText: "XXXXXXXXXXXX",
                  value: '',
                  onChanged: (value) => context
                      .read<RedeemCouponBloc>()
                      .add(RedeemCouponEvent.changeCouponCode(value)),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  // onTap: () => context
                  //     .read<RedeemCouponBloc>()
                  //     .add(const RedeemCouponEvent.applyCoupon()),
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
              ),
            ],
          ),
        );
      },
    );
  }
}
