import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_personal_info/actor/update_personal_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/pages/resume/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class EditAcademicInfoForm extends StatelessWidget {
  // final PersonalInfo info;

  const EditAcademicInfoForm({
    Key key,
    // @required this.info,
  }) :
        // assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (context) => getIt<UpdatePersonalInfoActorBloc>()
    //     ..add(UpdatePersonalInfoActorEvent.setInitialState(info)),
    //   child:
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Academic Info",
          style: TextStyle(color: Palette.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.clear, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Palette.primary,
        actions: const [
          _SaveButton(),
        ],
        elevation: 0,
      ),
      body: editResumeBody(context),
      // ),
    );
  }

  Widget editResumeBody(BuildContext context) {
    // return BlocConsumer<UpdatePersonalInfoActorBloc,
    //     UpdatePersonalInfoActorState>(
    //   listener: (context, state) {
    //     state.authFailureOrSuccessOption.fold(
    //       () {},
    //       (either) => either.fold(
    //         (failure) {
    //           FlushbarHelper.createError(
    //               message: failure.map(
    //             serverError: (error) => error.message,
    //             invalidUser: (_) => AppConstants.someThingWentWrong,
    //             noInternetConnection: (_) => AppConstants.noNetwork,
    //           )).show(context);
    //         },
    //         (success) {
    //           getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());

    //           showDialog(
    //             context: context,
    //             builder: (_) => PopUpSuccessOverLay(
    //               title: "Basic Info",
    //               message: "Successfully updated.",
    //               onPressed: () {
    //                 ExtendedNavigator.of(context)
    //                     .popUntilPath(Routes.tabBarScreen);
    //               },
    //             ),
    //           );
    //         },
    //       ),
    //     );
    //   },
    //   buildWhen: (previous, next) => previous.hashCode != next.hashCode,
    //   builder: (context, state) {
    //     if (state.isSubmitting) {
    //       return loadingPage(context);
    //     }
    return const _EditBasicInfoFormBody();
    //   },
    // );
  }
}

class _EditBasicInfoFormBody extends StatefulWidget {
  const _EditBasicInfoFormBody({
    Key key,
  }) : super(key: key);

  @override
  _EditBasicInfoFormBodyState createState() => _EditBasicInfoFormBodyState();
}

class _EditBasicInfoFormBodyState extends State<_EditBasicInfoFormBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextWidetWithLabelAndChild(
              title: "Name Of Institute",
              child: InputTextWidget(
                hintText: "Name Of Institute",
                textInputType: TextInputType.name,
                validator: Validator.isNotEmptyAndMinimum3CharacterLong,
                value: "",
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            TextWidetWithLabelAndChild(
              title: "Year of Enroll",
              child: InputTextWidget(
                hintText: "Year of Enroll",
                textInputType: TextInputType.number,
                validator: Validator.isNotEmptyAndMinimum3CharacterLong,
                value: "",
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            TextWidetWithLabelAndChild(
              title: "Year of Completion",
              child: InputTextWidget(
                hintText: "Year of Completion",
                textInputType: TextInputType.number,
                validator: Validator.isNotEmptyAndMinimum3CharacterLong,
                value: "",
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            TextWidetWithLabelAndChild(
              title: "Month of Enroll",
              child: InputTextWidget(
                hintText: "Month of Enroll",
                textInputType: TextInputType.number,
                validator: Validator.isNotEmptyAndMinimum3CharacterLong,
                value: "",
                onChanged: (value) {},
              ),
            ),
            const SizedBox(height: 20),
            TextWidetWithLabelAndChild(
              title: "Year of Completion",
              child: InputTextWidget(
                hintText: "Year of Completion",
                textInputType: TextInputType.number,
                validator: Validator.isNotEmptyAndMinimum3CharacterLong,
                value: "",
                onChanged: (value) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<UpdatePersonalInfoActorBloc,
    //     UpdatePersonalInfoActorState>(
    //   builder: (context, state) {
    return InkWell(
      onTap: () => context.read<UpdatePersonalInfoActorBloc>().add(
            const UpdatePersonalInfoActorEvent.save(),
          ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Palette.primaryButtonColor,
          ),
          margin: const EdgeInsets.only(right: 16),
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 2,
          ),
          child: Text(
            "save",
            style: TextStyle(color: Palette.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
    // },
    // );
  }
}
