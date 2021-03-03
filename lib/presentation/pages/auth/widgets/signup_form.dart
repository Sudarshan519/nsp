import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/features/auth/presentation/sign_up/sign_up_form_bloc.dart';
import 'package:wallet_app/presentation/pages/auth/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/validator.dart';

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
        _FirstNameInput(
          callBack: () {
            node.nextFocus();
          },
        ),
        const SizedBox(
          height: 30,
        ),
        _LastNameInput(
          callBack: () {
            node.nextFocus();
          },
        ),
        const SizedBox(
          height: 30,
        ),
        _EmailInput(
          callBack: () {
            node.nextFocus();
          },
        ),
        const SizedBox(
          height: 18,
        ),
        _PasswordInput(
          callBack: () {
            node.nextFocus();
          },
        ),
        const SizedBox(
          height: 18,
        ),
        _ConfirmPasswordInput(
          callBack: () {
            node.nextFocus();
          },
        ),
        const SizedBox(
          height: 33,
        ),
        const _SignUpButton(),
      ],
    );
  }
}

class _FirstNameInput extends StatelessWidget {
  final Function() callBack;

  const _FirstNameInput({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SignUpFormBloc, SignUpFormState>(
        buildWhen: (previous, current) =>
            previous.firstName != current.firstName,
        builder: (context, state) => InputTextWidget(
          hintText: "First Name",
          value: state.firstName,
          textInputType: TextInputType.name,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/user.svg",
          ),
          onEditingCompleted: callBack,
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          onChanged: (value) => context
              .read<SignUpFormBloc>()
              .add(SignUpFormEvent.changeFirstName(value)),
        ),
      );
}

class _LastNameInput extends StatelessWidget {
  final Function() callBack;

  const _LastNameInput({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SignUpFormBloc, SignUpFormState>(
        buildWhen: (previous, current) => previous.lastName != current.lastName,
        builder: (context, state) => InputTextWidget(
          hintText: "Last Name",
          value: state.lastName,
          textInputType: TextInputType.name,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/user.svg",
          ),
          validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          onEditingCompleted: callBack,
          onChanged: (value) => context
              .read<SignUpFormBloc>()
              .add(SignUpFormEvent.changeLastName(value)),
        ),
      );
}

class _EmailInput extends StatelessWidget {
  final Function() callBack;

  const _EmailInput({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SignUpFormBloc, SignUpFormState>(
        buildWhen: (previous, current) =>
            previous.emailAddress != current.emailAddress,
        builder: (context, state) => InputTextWidget(
          hintText: "Email Address",
          value: state.emailAddress,
          textInputType: TextInputType.emailAddress,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/email.svg",
          ),
          validator: Validator.isValidEmail,
          onEditingCompleted: callBack,
          onChanged: (value) => context
              .read<SignUpFormBloc>()
              .add(SignUpFormEvent.changeEmail(value)),
        ),
      );
}

class _PasswordInput extends StatelessWidget {
  final Function() callBack;

  const _PasswordInput({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SignUpFormBloc, SignUpFormState>(
        buildWhen: (previous, current) =>
            previous.password != current.password ||
            previous.isPasswordVisible != current.isPasswordVisible,
        builder: (context, state) => InputTextWidget(
          hintText: "Password",
          value: state.password,
          obscureText: !state.isPasswordVisible,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/lock.svg",
          ),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => context
                .read<SignUpFormBloc>()
                .add(const SignUpFormEvent.showPassword()),
            icon: SvgPicture.asset(
              "assets/images/auth/password-invisible.svg",
              color: !state.isPasswordVisible ? null : Palette.primary,
            ),
          ),
          validator: Validator.isValidPassword,
          onEditingCompleted: callBack,
          textInputAction: TextInputAction.done,
          onChanged: (value) => context
              .read<SignUpFormBloc>()
              .add(SignUpFormEvent.changePassword(value)),
        ),
      );
}

class _ConfirmPasswordInput extends StatelessWidget {
  final Function() callBack;

  const _ConfirmPasswordInput({
    Key key,
    @required this.callBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<SignUpFormBloc, SignUpFormState>(
        buildWhen: (previous, current) =>
            previous.confirmPassword != current.confirmPassword ||
            previous.isConfirmPasswordVisible !=
                current.isConfirmPasswordVisible,
        builder: (context, state) => InputTextWidget(
          hintText: "Confirm Password",
          value: state.confirmPassword,
          obscureText: !state.isConfirmPasswordVisible,
          prefixIcon: SvgPicture.asset(
            "assets/images/auth/lock.svg",
          ),
          suffixIcon: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () => context
                .read<SignUpFormBloc>()
                .add(const SignUpFormEvent.showConfirmPassword()),
            icon: SvgPicture.asset(
              "assets/images/auth/password-invisible.svg",
              color: !state.isConfirmPasswordVisible ? null : Palette.primary,
            ),
          ),
          validator: Validator.isValidPassword,
          onEditingCompleted: callBack,
          textInputAction: TextInputAction.done,
          onChanged: (value) => context
              .read<SignUpFormBloc>()
              .add(SignUpFormEvent.changeConfirmPassword(value)),
        ),
      );
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpFormBloc, SignUpFormState>(
      builder: (context, state) {
        return InkWell(
          onTap: () {
            context.read<SignUpFormBloc>().add(
                const SignUpFormEvent.signUpWithEmailPasswordAndOtherPressed());
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
                    "Sign Up",
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
        );
      },
    );
  }
}
