import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:wallet_app/features/coupon/domain/entities/coupon_code.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class CouponDetail extends StatefulWidget {
  const CouponDetail({
    Key? key,
    required this.coupon,
  }) : super(key: key);

  final CouponCode coupon;

  @override
  _CouponDetailState createState() => _CouponDetailState();
}

class _CouponDetailState extends State<CouponDetail> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              context.popRoute();
            },
            icon: const Icon(Icons.clear),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16.0),
          height: 40,
          decoration: BoxDecoration(
            color: Palette.dividerColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 0
                          ? Palette.primary
                          : Palette.dividerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Details",
                      style: TextStyle(
                        color:
                            _selectedIndex == 0 ? Palette.white : Palette.black,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: _selectedIndex == 1
                          ? Palette.primary
                          : Palette.dividerColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "Terms and Contitions",
                      style: TextStyle(
                        color:
                            _selectedIndex == 1 ? Palette.white : Palette.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        if (_selectedIndex == 0)
          Flexible(child: detailWidget(context))
        else
          Expanded(
            child: termsAndConditionWidget(context),
          ),
      ],
    );
  }

  Widget detailWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.dividerColor,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Redeem Code",
                  style: TextStyle(
                    color: Palette.blackTextColor,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          border: Border.all(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(20),
                          color: Palette.primaryBackground,
                        ),
                        child: Text(
                          widget.coupon.couponCode ?? '',
                          style: TextStyle(
                            color: Palette.blackTextColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        Clipboard.setData(ClipboardData(
                                text: widget.coupon.couponCode ?? ''))
                            .then(
                          (_) {
                            FlushbarHelper.createInformation(
                              message:
                                  "Coupon code has been copied to clipboard.",
                            ).show(context);
                          },
                        );
                      },
                      child: Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Copy",
                          style: TextStyle(color: Palette.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Palette.dividerColor,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  widget.coupon.title ?? '',
                  style: TextStyle(
                    color: Palette.blackTextColor,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  widget.coupon.description ?? '',
                  style: TextStyle(
                    color: Palette.blackTextColor.withOpacity(0.7),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reward Point",
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${widget.coupon.rewardPoint} Pts",
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.0),
                        decoration: BoxDecoration(
                          color: Palette.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cashback",
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "${widget.coupon.cashback}%",
                              style: TextStyle(
                                color: Palette.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Starts on ${widget.coupon.formattedstartDate} | Expires on ${widget.coupon.formattedExpiryDate}",
                  style: TextStyle(
                    color: Palette.black.withOpacity(0.5),
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget termsAndConditionWidget(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Palette.dividerColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Html(
          data: widget.coupon.termsConditions ?? '',
          onLinkTap: (link, _, __, ___) {
            context.pushRoute(
              AppWebViewRoute(url: link ?? '', title: ""),
            );
          },
        ),
      ),
    );
  }
}
