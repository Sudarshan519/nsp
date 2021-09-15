import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/contact_us/presentation/contact_us/contact_us_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/add_balance/widget/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:provider/provider.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:auto_route/auto_route.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detail = context.read<HomePageDataBloc>().homeData?.userDetail;
    final name = '${detail?.firstName ?? ''} ${detail?.lastName ?? ''}';
    final email = detail?.email ?? '';

    Widget formWidget() {
      return BlocProvider(
          create: (context) => getIt<ContactUsBloc>()
            ..add(ContactUsEvent.setInital(name: name, email: email)),
          child: BlocConsumer<ContactUsBloc, ContactUsState>(
            listener: (context, state) {
              state.failureOrSuccessOption.fold(
                () => {},
                (either) => either.fold(
                  (failure) {
                    FlushbarHelper.createError(
                        message: failure.map(
                      serverError: (error) => error.message,
                      invalidUser: (_) => AppConstants.someThingWentWrong,
                      noInternetConnection: (_) => AppConstants.noNetwork,
                    )).show(context);
                  },
                  (success) {
                    showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (_) => PopUpSuccessOverLay(
                        title: "Success",
                        message:
                            'Your message has been succesfully deliivered!',
                        onPressed: () {
                          context.router.navigate(const TabBarRoute());
                        },
                      ),
                    );
                  },
                ),
              );
            },
            builder: (context, state) {
              return state.isLoading ? loadingPage() : const _FormBody();
            },
          ));
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Us",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const BackButton(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            formWidget(),
            Card(
              child: ListTile(
                leading: Icon(Icons.location_on, color: Palette.primary),
                title: Text('Visit Us'),
                subtitle: Text(
                    'NAX Building 9F, Shinkawa 1-3-2, Chuo-ku , Tokyo 104-0033'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.email, color: Palette.primary),
                title: Text('Mail Us'),
                subtitle: Text('info@bnpj.jp'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FormBody extends StatelessWidget {
  const _FormBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextWidetWithLabelAndChild(
              title: 'Name',
              child: BlocBuilder<ContactUsBloc, ContactUsState>(
                buildWhen: (previous, current) => previous.name != current.name,
                builder: (context, state) {
                  return InputTextWidget(
                    key: state.key,
                    onChanged: (text) {
                      context
                          .read<ContactUsBloc>()
                          .add(ContactUsEvent.changeName(text));
                    },
                    value: state.name,
                    hintText: 'Your Name',
                  );
                },
              )),
          const SizedBox(
            height: 8,
          ),
          TextWidetWithLabelAndChild(
              title: 'Email address',
              child: BlocBuilder<ContactUsBloc, ContactUsState>(
                buildWhen: (previous, current) =>
                    previous.email != current.email,
                builder: (context, state) {
                  return InputTextWidget(
                    key: state.key,
                    onChanged: (text) {
                      context
                          .read<ContactUsBloc>()
                          .add(ContactUsEvent.changeEmail(text));
                    },
                    value: state.email,
                    hintText: 'example@test.com',
                  );
                },
              )),
          const SizedBox(
            height: 8,
          ),
          TextWidetWithLabelAndChild(
              title: 'Message',
              child: BlocBuilder<ContactUsBloc, ContactUsState>(
                buildWhen: (previous, current) =>
                    previous.message != current.message,
                builder: (context, state) {
                  return InputTextWidget(
                    maxLines: 4,
                    maxlength: 300,
                    key: state.key,
                    onChanged: (text) {
                      context
                          .read<ContactUsBloc>()
                          .add(ContactUsEvent.changeMessage(text));
                    },
                    value: state.message,
                    hintText: 'Remarks',
                  );
                },
              )),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
              title: 'Submit',
              onTap: () {
                context
                    .read<ContactUsBloc>()
                    .add(const ContactUsEvent.contactUs());
              })
        ],
      ),
    );
  }
}
