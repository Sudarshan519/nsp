import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/balance/presentation/get_balance_bloc.dart';
import 'package:wallet_app/features/transaction/presentation/transaction/transaction_bloc.dart';
import 'package:wallet_app/ui/widgets/colors.dart';

class BNPJCard extends StatelessWidget {
  const BNPJCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetBalanceBloc, GetBalanceState>(
      builder: (context, state) {
        return state.map(
          loading: (_) {
            return _cardWidget(context, '');
          },
          loaded: (success) {
            return _cardWidget(context, success.balance.formattedCurrency);
          },
          failure: (_) {
            return _cardWidget(context, '');
          },
        );
      },
    );
  }

  Widget _cardWidget(BuildContext context, String balance) {
    final width = MediaQuery.of(context).size.width - 32;
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
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/transaction/bnpj_card.png',
                width: width,
                fit: BoxFit.fitHeight,
              ),
              Positioned(
                top: 20,
                left: 20,
                child: BlocBuilder<HomePageDataBloc, HomePageDataState>(
                  buildWhen: (previous, next) =>
                      previous.hashCode != next.hashCode,
                  builder: (context, state) {
                    return state.map(
                      initial: (_) => const SizedBox.shrink(),
                      loading: (_) => const SizedBox.shrink(),
                      loadingWithData: (success) =>
                          cardInfo(context, success.data.userDetail, balance),
                      loaded: (success) =>
                          cardInfo(context, success.data.userDetail, balance),
                      failure: (error) => const SizedBox.shrink(),
                      failureWithData: (failure) => const SizedBox.shrink(),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget cardInfo(
    BuildContext context,
    UserDetail? userDetail,
    String balance,
  ) {
    final width = MediaQuery.of(context).size.width - 64;
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Balance",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              InkWell(
                onTap: () {
                  context
                    ..read<GetBalanceBloc>()
                        .add(const GetBalanceEvent.fetchBalance())
                    ..read<TransactionBloc>()
                        .add(const TransactionEvent.fetchTransactionData());
                },
                child: Icon(
                  Icons.replay_outlined,
                  color: Palette.white,
                ),
              ),
            ],
          ),
          if (balance.isEmpty)
            Container(
              padding: const EdgeInsets.only(top: 9),
              width: 90,
              child: const LinearProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.black12,
              ),
            )
          else
            Text(
              balance,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          const SizedBox(height: 30),
          Text(
            "${userDetail?.firstName ?? ""} ${userDetail?.lastName ?? ""}",
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            userDetail?.email ?? "",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            userDetail?.mobile ?? "",
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
