import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/features/coupon/presentation/get_coupon_list/get_coupon_list_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'coupon_detail.dart';

class PromocodePage extends StatelessWidget {
  const PromocodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GetCouponListBloc>()
        ..add(
          const GetCouponListEvent.getAllCoupons(),
        ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: const Text(
              "Promo Codes",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          const Flexible(
            child: PromoCodeWidget(),
          ),
        ],
      ),
    );
  }
}

class PromoCodeWidget extends StatelessWidget {
  const PromoCodeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCouponListBloc, GetCouponListState>(
      builder: (context, state) {
        return state.map(
          loading: (_) => loadingPage(),
          failure: (failure) {
            return const SizedBox.shrink();
          },
          loaded: (success) {
            return ShadowBoxWidget(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: success.coupons.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => PromoCodeItemWidget(
                  coupon: success.coupons[index],
                ),
              ),
            );
          },
        );
      },
    );
  }
}

class PromoCodeItemWidget extends StatelessWidget {
  const PromoCodeItemWidget({
    Key? key,
    required this.coupon,
  }) : super(key: key);

  final CouponCode coupon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Palette.primary,
              ),
              child: SvgPicture.asset(
                "assets/images/coupon/gift_box.svg",
                color: Palette.white,
                height: 25.0,
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          coupon.title ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Starts on ${coupon.formattedstartDate}",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Palette.textFieldPlaceholderColor,
                          ),
                        ),
                        Text(
                          "Expires on ${coupon.formattedExpiryDate}",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Palette.textFieldPlaceholderColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "*Conditions Apply",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                topRight: Radius.circular(16),
                              ),
                            ),
                            builder: (BuildContext context) {
                              return CouponDetail(
                                coupon: coupon,
                              );
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Palette.primary,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "View Details",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Palette.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        Container(
          height: 1,
          color: Palette.dividerColor,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
