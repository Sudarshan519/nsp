import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/presentations/bloc/update_profile_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/widgets/custom_button.dart';
import 'package:wallet_app/ui/widgets/image_loader_view.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class PersonalDocumentDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UpdateProfileBloc, UpdateProfileState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
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
              getIt<ResumeWatcherBloc>()
                  .add(const ResumeWatcherEvent.getResumeData());

              showDialog(
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Kyc Info",
                  message: "Successfully updated.",
                  onPressed: () {
                    // ExtendedNavigator.of(context).pop();
                  },
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return loadingPage();
        }
        return buildBody(context, state.key);
      },
    );
  }

  Widget buildBody(BuildContext context, Key key) {
    return Column(
      key: key,
      children: [
        _UserPhotoWidget(),
        const SizedBox(height: 16),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Origin KYC Documents",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                _OriginKycDocumentWidget(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Origin Documents Details",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Type",
                  child: InputTextWidget(
                    hintText: "Document Type",
                    textInputType: TextInputType.name,
                    value: "",
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Issued From",
                  child: InputTextWidget(
                    hintText: "Search",
                    textInputType: TextInputType.name,
                    value: "",
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextWidetWithLabelAndChild(
                        title: "Issued Date",
                        child: InputTextWidget(
                          hintText: "AD",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 2,
                      child: TextWidetWithLabelAndChild(
                        title: "Year",
                        child: InputTextWidget(
                          hintText: "1195",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextWidetWithLabelAndChild(
                        title: "Month",
                        child: InputTextWidget(
                          hintText: "Jan",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextWidetWithLabelAndChild(
                        title: "Days",
                        child: InputTextWidget(
                          hintText: "31",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Residence KYC Documents",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                _OriginKycDocumentWidget(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Residence Documents Details",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Type",
                  child: InputTextWidget(
                    hintText: "Document Type",
                    textInputType: TextInputType.name,
                    value: "",
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Issued From",
                  child: InputTextWidget(
                    hintText: "Search",
                    textInputType: TextInputType.name,
                    value: "",
                    isEnable: false,
                    onChanged: (value) {},
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextWidetWithLabelAndChild(
                        title: "Issued Date",
                        child: InputTextWidget(
                          hintText: "AD",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      flex: 2,
                      child: TextWidetWithLabelAndChild(
                        title: "Year",
                        child: InputTextWidget(
                          hintText: "1195",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextWidetWithLabelAndChild(
                        title: "Month",
                        child: InputTextWidget(
                          hintText: "Jan",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TextWidetWithLabelAndChild(
                        title: "Days",
                        child: InputTextWidget(
                          hintText: "31",
                          textInputType: TextInputType.name,
                          value: "",
                          isEnable: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: 80,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Palette.primary,
          ),
          child: Center(
            child: Text(
              "Save",
              style: TextStyle(
                color: Palette.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _UserPhotoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) {
        return ShadowBoxWidget(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "User Photo",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ImageLoaderWidget(
                  image: state.profilePicture,
                  height: 80,
                  width: 80,
                  cornerRadius: 40,
                ),
                const SizedBox(height: 10),
                CustomButton(
                  title: "Change",
                  onTap: () {},
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _OriginKycDocumentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Palette.primaryBackground.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ImageLoaderWidget(
                  image: state.originKycDocFront,
                  height: 100,
                  width: 80,
                  cornerRadius: 10,
                  isPlaceHolderSvg: true,
                  placeholderImage: "assets/images/profile/doc.svg",
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Palette.primaryBackground.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: ImageLoaderWidget(
                  image: state.originKycDocBack,
                  height: 100,
                  width: 80,
                  cornerRadius: 10,
                  isPlaceHolderSvg: true,
                  placeholderImage: "assets/images/profile/doc.svg",
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
