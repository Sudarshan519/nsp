import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/presentation/verify_coupon/verify_coupon_bloc.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';

import 'colors.dart';
import 'loading_widget.dart';

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
    return _buildCoupon(context);
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
