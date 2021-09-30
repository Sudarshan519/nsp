import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wallet_app/features/contact_us/presentation/contact_us/contact_us_bloc.dart';
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
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ContactUsBloc>()..add(const ContactUsEvent.setInital()),
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
                  ),
                ).show(context);
              },
              (success) {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) => PopUpSuccessOverLay(
                    title: "Success",
                    message: 'Your message has been succesfully delivered!',
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
          return state.isLoading
              ? Container(color: Colors.white, child: loadingPage())
              : _bodyWidget(state.key);
        },
      ),
    );
  }

  Widget _bodyWidget(
    Key key,
  ) {
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
            _FormBody(
              key: key,
            ),
            const SizedBox(height: 8),
            _infoWidget(
              onTap: () => launcher.launch('mailto:info@bnpj.jp'),
              icon: Icons.email,
              title: 'Mail Us',
              description: 'info@bnpj.jp',
            ),
            _infoWidget(
              onTap: () => launcher.launch('tel:03-6222-8365'),
              icon: Icons.call,
              title: 'Call Us',
              description: '03-6222-8365',
            ),
            _infoWidget(
              icon: Icons.location_on,
              title: 'Visit Us',
              description:
                  'NAX Building 9F, Shinkawa 1-3-2, Chuo-ku , Tokyo 104-0033',
            ),
            const SizedBox(height: 8),
            const SizedBox(
              height: 300,
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                    target: LatLng(
                      35.6773408,
                      139.7774822,
                    ),
                    zoom: 17),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget _infoWidget({
  required IconData icon,
  required String title,
  required String description,
  void Function()? onTap,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 8),
    child: ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(icon, color: Palette.primary),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    textScaleFactor: 0.87,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class _FormBody extends StatelessWidget {
  const _FormBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Column(
        children: [
          TextWidetWithLabelAndChild(
            title: 'Name',
            child: BlocBuilder<ContactUsBloc, ContactUsState>(
              buildWhen: (previous, current) => previous.name != current.name,
              builder: (context, state) {
                return InputTextWidget(
                  onChanged: (text) {
                    context
                        .read<ContactUsBloc>()
                        .add(ContactUsEvent.changeName(text));
                  },
                  value: state.name,
                  hintText: 'Your Name',
                );
              },
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextWidetWithLabelAndChild(
            title: 'Email address',
            child: BlocBuilder<ContactUsBloc, ContactUsState>(
              buildWhen: (previous, current) => previous.email != current.email,
              builder: (context, state) {
                return InputTextWidget(
                  onChanged: (text) {
                    context
                        .read<ContactUsBloc>()
                        .add(ContactUsEvent.changeEmail(text));
                  },
                  value: state.email,
                  hintText: 'example@test.com',
                );
              },
            ),
          ),
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
                  onChanged: (text) {
                    context
                        .read<ContactUsBloc>()
                        .add(ContactUsEvent.changeMessage(text));
                  },
                  value: state.message,
                  hintText: 'Remarks',
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            title: 'Submit',
            onTap: () {
              context
                  .read<ContactUsBloc>()
                  .add(const ContactUsEvent.contactUs());
            },
          )
        ],
      ),
    );
  }
}
