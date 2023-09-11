import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/auth/domain/usecase/set_mpin.dart';
import 'package:wallet_app/features/auth/presentation/security/mpin/set_mpin_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_success_overlay.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SetMpinPage extends StatelessWidget {
  SetMpinPage({Key? key}) : super(key: key);

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String mPin = '', confirmMpin = '';
    final _homeBloc = getIt<HomePageDataBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Set MPin",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => getIt<SetMpinBloc>(),
          child: BlocConsumer<SetMpinBloc, SetMpinState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                failure: (failure) {
                  failure.failure.map(
                    invalidUser: (_) {},
                    noInternetConnection: (error) {
                      FlushbarHelper.createError(
                              message: AppConstants.noNetwork)
                          .show(context);
                    },
                    serverError: (error) {
                      FlushbarHelper.createError(message: error.message)
                          .show(context);
                    },
                  );
                },
                loading: (_) {},
                success: (_) async {
                  _homeBloc.add(const HomePageDataEvent.fetch());

                  await showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) => PopUpSuccessOverLay(
                      title: 'Success',
                      message: 'Mpin set Successfully!',
                      onPressed: () {
                        context.popRoute(true);
                      },
                    ),
                  );
                  context.popRoute(true);
                },
              );
            },
            builder: (blocContext, state) {
              return state == const SetMpinState.loading()
                  ? Center(child: loadingPage())
                  : Column(
                      children: [
                        ShadowBoxWidget(
                          margin: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              TextWidetWithLabelAndChild(
                                  title: 'Enter MPin',
                                  child: InputTextWidget(
                                    textInputType: TextInputType.number,
                                    obscureText: true,
                                    showHideTextOption: true,
                                    maxlength: 4,
                                    hintText: 'PIN',
                                    onChanged: (text) {
                                      mPin = text;
                                    },
                                    value: '',
                                  )),
                              const SizedBox(
                                height: 8,
                              ),
                              TextWidetWithLabelAndChild(
                                  title: 'Confirm MPin',
                                  child: InputTextWidget(
                                    textInputType: TextInputType.number,
                                    obscureText: true,
                                    showHideTextOption: true,
                                    hintText: 'PIN',
                                    maxlength: 4,
                                    onChanged: (text) {
                                      confirmMpin = text;
                                    },
                                    value: '',
                                  )),
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
                              blocContext.read<SetMpinBloc>().add(
                                  SetMpinEvent.set(SetMpinParams(
                                      mpin: mPin, verifyMpin: confirmMpin)));
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
                    );
            },
          ),
        ),
      ),
    );
  }
}
