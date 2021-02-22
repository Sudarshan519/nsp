import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/presentation/pages/auth/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';

class SignupFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final node = FocusScope.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Sign Up",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        InputTextWidget(
          hintText: "First Name",
          textInputType: TextInputType.name,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/user.svg",
          ),
          onEditingCompleted: () {
            node.nextFocus();
          },
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 30,
        ),
        InputTextWidget(
          hintText: "Last Name",
          textInputType: TextInputType.name,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/user.svg",
          ),
          onEditingCompleted: () {
            debugPrint("Email Edit Completed");
            node.nextFocus();
          },
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 30,
        ),
        InputTextWidget(
          hintText: "Email Address",
          textInputType: TextInputType.emailAddress,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/email.svg",
          ),
          onEditingCompleted: () {
            debugPrint("Email Edit Completed");
            node.nextFocus();
          },
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 30,
        ),
        InputTextWidget(
          hintText: "Password",
          obscureText: true,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/lock.svg",
          ),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/images/auth/password-invisible.svg",
            ),
          ),
          textInputAction: TextInputAction.done,
          onEditingCompleted: () {
            debugPrint("Password Edit Completed");
            node.unfocus();
          },
          onChanged: (value) {},
        ),
        const SizedBox(
          height: 33,
        ),
        InkWell(
          onTap: () {},
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
                    "Sign Up",
                    style: TextStyle(
                      color: Palette.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
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
        )
      ],
    );
  }
}

// class _EmailInput extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // return BlocBuilder<LoginBloc, LoginState>(
//     return BlocBuilder(
//       buildWhen: (previous, current) => previous.email != current.email,
//       builder: (context, state) {
//         return TextField(
//           key: const Key('loginForm_passwordInput_textField'),
//           // onChanged: (password) =>
//           //     context.read<LoginBloc>().add(LoginPasswordChanged(password)),
//           obscureText: true,
//           decoration: InputDecoration(
//             labelText: 'password',
//             errorText: state.password.invalid ? 'invalid password' : null,
//           ),
//         );
//       },
//     );
//   }
// }
