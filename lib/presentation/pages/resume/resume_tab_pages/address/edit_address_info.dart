import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/presentation/update_address_info/actor/update_address_info_actor_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/form_field_decoration.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/input_text_widget.dart';
import 'package:wallet_app/presentation/pages/resume/resume_tab_pages/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/presentation/routes/routes.gr.dart';
import 'package:wallet_app/presentation/widgets/colors.dart';
import 'package:wallet_app/presentation/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/presentation/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:wallet_app/utils/validator.dart';

class EditAddressInfoForm extends StatelessWidget {
  final PersonalInfo info;

  const EditAddressInfoForm({
    Key key,
    @required this.info,
  })  : assert(info != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateAddressInfoActorBloc>()
        ..add(UpdateAddressInfoActorEvent.setInitialState(info)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Edit Address Info",
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
      ),
    );
  }

  Widget editResumeBody(BuildContext context) {
    return BlocConsumer<UpdateAddressInfoActorBloc,
        UpdateAddressInfoActorState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
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
              getIt<HomePageDataBloc>().add(const HomePageDataEvent.fetch());

              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Address Info",
                  message: "Successfully updated.",
                  onPressed: () {
                    ExtendedNavigator.of(context)
                        .popUntilPath(Routes.tabBarScreen);
                  },
                ),
              );
            },
          ),
        );
      },
      buildWhen: (previous, next) => previous.hashCode != next.hashCode,
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage(context);
        }
        return const _EditBasicInfoFormBody();
      },
    );
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
          children: const [
            _CountryInputField(),
            SizedBox(height: 20),
            _PostalCodeInputField(),
            SizedBox(height: 20),
            _PrefectureInputField(),
            SizedBox(height: 20),
            _CityInputField(),
            SizedBox(height: 20),
            _AddressInputField(),
            SizedBox(height: 20),
            _PhoneInputField(),
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
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => context.read<UpdateAddressInfoActorBloc>().add(
                const UpdateAddressInfoActorEvent.save(),
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
      },
    );
  }
}

class _PostalCodeInputField extends StatelessWidget {
  const _PostalCodeInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.postalCode != current.postalCode,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Postal Code",
        child: InputTextWidget(
          hintText: "Postal Code",
          textInputType: TextInputType.number,
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.postalCode,

          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedPostalCode(value)),
        ),
      ),
    );
  }
}

class _CountryInputField extends StatelessWidget {
  const _CountryInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Country",
        child: CustomDropDownWidget(
          hintText: "Country",
          value: "Japan",
          options: const ["Japan"],
          onChanged: (value) {},
        ),
      ),
    );
  }
}

class _PrefectureInputField extends StatelessWidget {
  const _PrefectureInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) =>
          previous.prefecture != current.prefecture,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Prefecture",
        child: CustomDropDownWidget(
          hintText: "Prefecture",
          value: state.prefecture,
          options: const [
            "Hokkaidō",
            "Aomori",
            "Iwate",
            "Miyagi",
            "Akita",
            "Yamagata",
            "Fukushima",
            "Ibaraki",
            "Tochigi",
            "Gunma",
            "Saitama",
            "Chiba",
            "Tokyo",
            "Kanagawa",
            "Niigata",
            "Toyama",
            "Ishikawa",
            "Fukui",
            "Yamanashi",
            "Nagano",
            "Gifu",
            "Shizuoka",
            "Aichi",
            "Mie",
            "Shiga",
            "Kyōto",
            "Ōsaka",
            "Hyōgo",
            "Nara",
            "Wakayama",
            "Tottori",
            "Shimane",
            "Okayama",
            "Hiroshima",
            "Yamaguchi",
            "Tokushima",
            "Kagawa",
            "Ehime",
            "Kōchi",
            "Fukuoka",
            "Saga",
            "Nagasaki",
            "Kumamoto",
            "Ōita",
            "Miyazaki",
            "Kagoshima",
            "Okinawa",
          ],
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedPrefecture(value)),
        ),
      ),
    );
  }
}

class _CityInputField extends StatelessWidget {
  const _CityInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.city != current.city,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "City",
        child: CustomDropDownWidget(
          hintText: "City",
          value: state.city,
          options: const [
            "Nagoya",
            "Toyohashi",
            "Okazaki",
            "Ichinomiya",
            "Seto",
            "Handa",
            "Kasugai",
            "Toyokawa",
            "Tsushima",
            "Hekinan",
            "Kariya",
            "Toyota",
            "Anjō",
            "Nishio",
            "Gamagōri",
            "Inuyama",
            "Tokoname",
            "Kōnan",
            "Komaki",
            "Inazawa",
          ],
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedCity(value)),
        ),
      ),
    );
  }
}

class _AddressInputField extends StatelessWidget {
  const _AddressInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.address != current.address,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Address",
        child: InputTextWidget(
          hintText: "Address",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.address,

          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedAddress(value)),
        ),
      ),
    );
  }
}

class _PhoneInputField extends StatelessWidget {
  const _PhoneInputField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateAddressInfoActorBloc, UpdateAddressInfoActorState>(
      buildWhen: (previous, current) => previous.phone != current.phone,
      builder: (context, state) => TextWidetWithLabelAndChild(
        title: "Phone",
        child: InputTextWidget(
          hintText: "090-XXXX-XXXX",
          // validator: Validator.isNotEmptyAndMinimum3CharacterLong,
          value: state.phone,
          onChanged: (value) => context
              .read<UpdateAddressInfoActorBloc>()
              .add(UpdateAddressInfoActorEvent.changedPhone(value)),
        ),
      ),
    );
  }
}
