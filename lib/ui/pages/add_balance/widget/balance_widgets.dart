import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({Key? key}) : super(key: key);
  // ignore: avoid_field_initializers_in_const_classes

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBalanceBloc, GetBalanceState>(
      builder: (context, state) {
        return state.map(
          loading: (_) {
            return _balanceWidget(context, '');
          },
          loaded: (success) {
            return _balanceWidget(context, success.balance.formattedCurrency);
          },
          failure: (_) {
            return _balanceWidget(context, '');
          },
        );
      },
    );
  }

  Widget _balanceWidget(BuildContext context, String balance) {
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
}
