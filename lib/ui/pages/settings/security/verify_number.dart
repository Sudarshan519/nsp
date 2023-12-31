import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/presentation/security/verify_phone/verify_phone_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/pages/auth/widgets/pin_text_widget.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class VerifyNumberPage extends StatefulWidget {
  const VerifyNumberPage({Key? key}) : super(key: key);

  @override
  _VerifyNumberPageState createState() => _VerifyNumberPageState();
}

class _VerifyNumberPageState extends State<VerifyNumberPage> {
  final _homeBloc = getIt<HomePageDataBloc>();
  bool _isEditable = true;
  String _phone = '';

  @override
  void initState() {
    super.initState();
    // not letting to edit textfield if phone number is already verified
    setState(() {
      final isMobileVerified =
          (_homeBloc.homeData?.userDetail?.isMobileVerified) ?? false;
      _isEditable = !isMobileVerified;
      if (!_isEditable) {
        _phone = _homeBloc.homeData?.userDetail?.otpMobilePhone ?? '';
        if (_phone.length > 3) {
          _phone = hideNumber(_phone);
        }
      }
    });
  }

  String hideNumber(String number) {
    const lastCharToShow = 3;

    if (number.startsWith('0')) {
      number.replaceFirst('0', '');
    }

    final suffix = number.substring(number.length - lastCharToShow);

    final prefix =
        List.generate(number.length - lastCharToShow, (int index) => '*')
            .join();
    return prefix + suffix;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Verify Number",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: BlocProvider(
        create: (context) => getIt<VerifyPhoneBloc>(),
        child: BlocConsumer<VerifyPhoneBloc, VerifyPhoneState>(
          listener: (_, state) {
            state.map(
              initial: (_) {},
              codeSent: (_) {
                // FlushbarHelper.createSuccess(message: AppConstants.codeSent)
                //     .show(context);
              },
              failure: (failure) {
                failure.failure.map(
                  invalidUser: (_) {},
                  noInternetConnection: (error) {
                    FlushbarHelper.createError(message: AppConstants.noNetwork)
                        .show(context);
                  },
                  serverError: (error) {
                    FlushbarHelper.createError(message: error.message)
                        .show(context);
                  },
                );
              },
              loading: (_) {},
              verified: (_) async {
                _homeBloc.add(const HomePageDataEvent.fetch());
                // FlushbarHelper.createSuccess(message: 'Phone verified')
                //     .show(context);
                context.popRoute(true);
              },
            );
          },
          builder: (context, state) {
            return (state == const VerifyPhoneState.loading())
                ? Center(child: loadingPage())
                : SingleChildScrollView(
                    child: Column(
                      children: [
                        ShadowBoxWidget(
                          margin: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              if (state == const VerifyPhoneState.initial())
                                Column(
                                  children: [
                                    TextWidetWithLabelAndChild(
                                        title: 'JP Mobile Number (10 digits)',
                                        child: InputTextWidget(
                                          autoFocus: true,
                                          prefixText: '0 - ',
                                          isEnable: _isEditable,
                                          textInputType: TextInputType.number,
                                          maxlength: 10,
                                          hintText: 'Number',
                                          onChanged: (text) {
                                            _phone = text;
                                          },
                                          value: _phone,
                                        )),
                                  ],
                                ),
                              if (state == const VerifyPhoneState.codeSent())
                                Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.all(12.0),
                                      child: Text(
                                        'Enter OTP code that you received in your phone.',
                                        textScaleFactor: 0.9,
                                      ),
                                    ),
                                    PinTextWidget(
                                      onChanged: (s) {
                                        context.read<VerifyPhoneBloc>().add(
                                            VerifyPhoneEvent.changePin(
                                                s ?? ''));
                                      },
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: 8,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: InkWell(
                            onTap: () {
                              if (state == const VerifyPhoneState.initial()) {
                                context
                                    .read<VerifyPhoneBloc>()
                                    .add(VerifyPhoneEvent.resend(_phone));
                              } else if (state ==
                                  const VerifyPhoneState.codeSent()) {
                                context
                                    .read<VerifyPhoneBloc>()
                                    .add(VerifyPhoneEvent.verify(_phone));
                              }
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Palette.primary,
                              ),
                              child: Center(
                                child: Text(
                                  'Proceed',
                                  style: TextStyle(
                                    color: Palette.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
          },
        ),
      ),
    );
  }
}
