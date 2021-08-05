import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class BalanceAndPointWidget extends StatelessWidget {
  final bool showAddBalanceButton;

  const BalanceAndPointWidget({
    Key? key,
    this.showAddBalanceButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserDetail? user =
        context.read<HomePageDataBloc>().homeData?.userDetail;

    Widget _pointAndBalance(
      BuildContext context,
      String balance,
      String points,
    ) {
      return Stack(
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              color: Palette.primary,
            ),
          ),
          ShadowBoxWidget(
            margin: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Balance",
                      style: TextStyle(
                        color: Palette.primary,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    if (balance.isEmpty)
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        width: 90,
                        child: const LinearProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.black12,
                        ),
                      )
                    else
                      Text(
                        balance,
                        style: TextStyle(
                          color: Palette.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        context.pushRoute(const RewardPointRoute());
                      },
                      child: Row(
                        children: [
                          Text(
                            "Points",
                            style: TextStyle(
                              color: Palette.black.withOpacity(0.7),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          if (points.isEmpty)
                            Container(
                              padding: const EdgeInsets.only(top: 4),
                              width: 55,
                              child: const LinearProgressIndicator(
                                color: Colors.black,
                                backgroundColor: Colors.black12,
                              ),
                            )
                          else
                            Text(
                              points,
                              style: TextStyle(
                                color: Palette.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    if (showAddBalanceButton)
                      CustomButton(
                        title: "+ Add Balance",
                        onTap: () => context.pushRoute(
                          AddBalanceRoute(
                              conversionRate:
                                  user?.currencyConversionRate ?? 1.067,
                              isVerified: user?.isKycVerified ?? false),
                        ),
                      ),
                  ],
                )
              ],
            ),
          ),
        ],
      );
    }

    return BlocBuilder<GetBalanceBloc, GetBalanceState>(
      builder: (context, state) {
        // return pointAndBalance(context);
        return state.map(
          loading: (_) => _pointAndBalance(context, '', ''),
          // loaded: (success) => _pointAndBalance(context, '', ''),
          loaded: (success) => _pointAndBalance(
            context,
            success.balance.formattedCurrency,
            '${success.balance.point ?? 0.0}',
          ),
          failure: (_) => _pointAndBalance(context, '', ''),
        );
      },
    );
  }
}
