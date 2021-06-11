import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';

class BNPJCard extends StatelessWidget {
  const BNPJCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SvgPicture.asset(
          'assets/images/transaction/bnpj_card.svg',
        ),
        Positioned(
            top: 20,
            left: 20,
            child: BlocBuilder<HomePageDataBloc, HomePageDataState>(
              buildWhen: (previous, next) => previous.hashCode != next.hashCode,
              builder: (context, state) {
                return state.map(
                  initial: (_) => const Text(""),
                  loading: (_) => const Text(""),
                  loadingWithData: (success) => Text(
                      "${success.data.userDetail?.firstName ?? ""} ${success.data.userDetail?.lastName ?? ""}",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  loaded: (success) => Text(
                      "${success.data.userDetail?.firstName ?? ""} ${success.data.userDetail?.lastName ?? ""}",
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  failure: (error) => const Text(""),
                  failureWithData: (failure) => const Text(""),
                );
              },
            )
            // child: Text(
            //   'Lionel Messi',
            //   style: TextStyle(fontWeight: FontWeight.bold),
            // ),
            )
      ],
    );
  }
}
