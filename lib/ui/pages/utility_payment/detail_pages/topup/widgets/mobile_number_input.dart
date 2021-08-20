import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:wallet_app/features/utility_payments/data/models/utility_payments_model.dart';
import 'package:wallet_app/features/utility_payments/presentation/top_up_balance_in_mobile/top_up_balance_in_mobile_bloc.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';

class MobileNumberTextField extends StatelessWidget {
  final List<UtilityPaymentsModel> paymentData;
  const MobileNumberTextField(this.paymentData);

  @override
  Widget build(BuildContext context) {
    //get phone contacts
    return BlocBuilder<TopUpBalanceInMobileBloc, TopUpBalanceInMobileState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              key: state.key,
              child: TextWidetWithLabelAndChild(
                title: "Mobile (10 digit)",
                child: InputTextWidget(
                  hintText: "98XXXXXXXX",
                  textInputType: TextInputType.number,
                  value: state.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10),
                  ],
                  onChanged: (value) => context
                      .read<TopUpBalanceInMobileBloc>()
                      .add(TopUpBalanceInMobileEvent.changePhoneNumber(value)),
                  suffixIcon: InkWell(
                    onTap: () async {
                      final phoneNumber = await handleContact(context);
                      if (phoneNumber.isEmpty) {
                        FlushbarHelper.createError(
                                message: 'Invalid mobile number!')
                            .show(context);
                      } else {
                        context.read<TopUpBalanceInMobileBloc>().add(
                            TopUpBalanceInMobileEvent
                                .changePhoneNumberViaContact(phoneNumber));
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
      FlutterContactPicker.requestPermission();
    }
    final PhoneContact contact = await FlutterContactPicker.pickPhoneContact();
    if (contact.phoneNumber != null) {
      var number = contact.phoneNumber!.number.toString();
      if (number.length < 10) return '';

      number = number
          .replaceAll('+', '')
          .replaceAll('(', '')
          .replaceAll(')', '')
          .replaceAll('-', '')
          .replaceAll(' ', '');

      // taking the last 10 digits of the num if there is any type of prefix like country code etc
      number = number.substring(number.length - 10);

      //checking if the num is compatible with our providers
      if (Values.ntcRegx.hasMatch(number) ||
          Values.ncellRegx.hasMatch(number) ||
          Values.smartCellRegx.hasMatch(number)) {
        return number;
      }
      return "";
    }
    return "";
  }
}
