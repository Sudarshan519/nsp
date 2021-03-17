import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/presentation/verify_email/verify_email_bloc.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';

import 'pin_text_widget.dart';

class ConfirmPinFormWidget extends StatelessWidget {
  final String email;

  const ConfirmPinFormWidget({Key key, @required this.email})
      : assert(email != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Enter your code here.",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Center(
          child: SizedBox(
            width: 200,
            child: _PinInput(),
          ),
        ),
        const SizedBox(
          height: 23,
        ),
        _VerifyButton(
          node: node,
          email: email,
        ),
      ],
    );
  }
}

class _PinInput extends StatelessWidget {
  const _PinInput({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
        builder: (context, state) => PinTextWidget(
          onChanged: (value) {
            context
                .read<VerifyEmailBloc>()
                .add(VerifyEmailEvent.changePin(value));
          },
        ),
      );
}

class _VerifyButton extends StatelessWidget {
  final FocusNode node;
  final String email;
  const _VerifyButton({
    Key key,
    @required this.node,
    @required this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<VerifyEmailBloc, VerifyEmailState>(
        builder: (context, state) => InkWell(
          onTap: () {
            node.unfocus();
            context.read<VerifyEmailBloc>().add(VerifyEmailEvent.verify(email));
          },
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Palette.primaryButtonColor,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Verify",
                    style: TextStyle(
                      color: Palette.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    "assets/images/auth/back.svg",
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
