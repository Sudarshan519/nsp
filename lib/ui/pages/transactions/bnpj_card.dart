import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        const Positioned(
          top: 20,
          left: 20,
          child: Text(
            'Lionel Messi',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
