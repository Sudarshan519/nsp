import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';

class BNPJCard extends StatelessWidget {
  const BNPJCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 32;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Stack(
        children: [
          // SvgPicture.asset(
          //   'assets/images/transaction/bnpj_card.svg',
          //   width: 200,
          //   // fit: BoxFit.fitHeight,
          // ),
          Image.asset(
            'assets/images/transaction/bnpj_card.png',
            width: width,
            fit: BoxFit.fitHeight,
          ),
          Positioned(
            top: 20,
            left: 20,
            child: BlocBuilder<HomePageDataBloc, HomePageDataState>(
              buildWhen: (previous, next) => previous.hashCode != next.hashCode,
              builder: (context, state) {
                return state.map(
                  initial: (_) => const SizedBox.shrink(),
                  loading: (_) => const SizedBox.shrink(),
                  loadingWithData: (success) =>
                      cardInfo(success.data.userDetail),
                  loaded: (success) => cardInfo(success.data.userDetail),
                  failure: (error) => const SizedBox.shrink(),
                  failureWithData: (failure) => const SizedBox.shrink(),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  Widget cardInfo(UserDetail? userDetail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
    );
  }
}
