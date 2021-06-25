import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/currency_formater.dart';

class BalanceBlocWidget extends StatelessWidget {
  const BalanceBlocWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBalanceBloc, GetBalanceState>(
      builder: (context, state) {
        Widget _balWid(String balance) {
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
                    InkWell(
                      onTap: () => context
                          .read<GetBalanceBloc>()
                          .add(const GetBalanceEvent.fetchBalance()),
                      child: const Icon(
                        Icons.replay_outlined,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }

        return state.map(
          loading: (e) {
            return _balWid('XX.XX');
          },
          loaded: (e) {
            final formatted = currencyFormatter(value: e.balance);
            return _balWid(formatted);
          },
          failure: (e) {
            return _balWid('XX.XX');
          },
        );
      },
    );
  }
}
