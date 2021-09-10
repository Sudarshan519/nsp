import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class MobileNumberTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              key: state.key,
              child: TextWidetWithLabelAndChild(
                title: state.isLandline
                    ? 'Landline (8 digits)'
                    : "Mobile (10 digit)",
                child: InputTextWidget(
                  key: state.key,
                  prefixText: state.isLandline ? '0 - ' : '977 - ',
                  hintText: state.isLandline ? '148xxxxx' : "98XXXXXXXX",
                  maxlength: state.isLandline ? 8 : 10,
                  textInputType: TextInputType.number,
                  value: state.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  onChanged: (value) => context
                      .read<TopUpBalanceInMobileBloc>()
                      .add(TopUpBalanceInMobileEvent.changePhoneNumber(
                          number: value, fromContactPicker: false)),
                  suffixIcon: InkWell(
                    onTap: () async {
                      final phoneNumber = await handleContact(context);
                      if (phoneNumber.isEmpty) {
                        FlushbarHelper.createError(
                                message: 'Invalid mobile number!')
                            .show(context);
                      } else {
                        context.read<TopUpBalanceInMobileBloc>().add(
                            TopUpBalanceInMobileEvent.changePhoneNumber(
                                number: phoneNumber, fromContactPicker: true));
                      }
                    },
                    child: SvgPicture.asset(
                      "assets/images/home/utility-payment/icon-Phone-book.svg",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Column(
              children: [
                const SizedBox(height: 13),
                CircleAvatar(
                  backgroundColor: Palette.primary,
                  radius: 20,
                  child: SvgPicture.asset(
                    "assets/images/home/utility-payment/icon-Smartphone.svg",
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<String> handleContact(BuildContext context) async {
    final bool hasPermission = await FlutterContactPicker.hasPermission();
    if (!hasPermission) {
      // FlushbarHelper.createError(
      //         message: "Please provide contact read permission")
      //     .show(context);
      // await Future.delayed(const Duration(seconds: 2));
      final res = await FlutterContactPicker.requestPermission();
      if (!res) return '';
    }
    final PhoneContact contact = await FlutterContactPicker.pickPhoneContact();
    if (contact.phoneNumber != null) {
      var number = contact.phoneNumber!.number.toString();

      number = number
          .replaceAll('+', '')
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll('-', '')
          .replaceAll(' ', '');

      if (number.startsWith('977')) {
        number = number.replaceFirst('977', '');
      }

      //For land line, removing 0 if number is = 014876232
      if (number.startsWith('0')) {
        number = number.replaceFirst('0', '');
      }

      // // taking the last 10 digits of the num if there is any type of prefix like country code etc
      // number = number.substring(number.length - 10);

      //checking if the num is compatible with our providers
      final isCompatible =
          Values.allRegex.any((element) => element.hasMatch(number));
      return isCompatible ? number : '';
    }
    return "";
  }
}
