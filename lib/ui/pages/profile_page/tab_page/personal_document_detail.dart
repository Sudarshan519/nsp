import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/file_picker/file_provider.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/update_profile/presentations/bloc/update_profile_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/image_loader_view.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_permission_handler.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';
import 'package:permission_handler/permission_handler.dart';

class PersonalDocumentDetailPage extends StatefulWidget {
  @override
  _PersonalDocumentDetailPageState createState() =>
      _PersonalDocumentDetailPageState();
}

class _PersonalDocumentDetailPageState
    extends State<PersonalDocumentDetailPage> {
  // File? _userImage;
  File? _originKycDocFront;
  File? _originKycDocBack;
  File? _residenceKycDocFront;
  File? _residenceKycDocBack;

  @override
  void initState() {
    // TODO: implement initState
    _originKycDocFront = null;
    _originKycDocBack = null;
    _residenceKycDocFront = null;
    _residenceKycDocBack = null;
    super.initState();
  }

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
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => PopUpSuccessOverLay(
                  title: "Kyc Info",
                  message: "Successfully updated.",
                  onPressed: () {
                    context.router.navigate(const TabBarRoute());
                    getIt<HomePageDataBloc>()
                        .add(const HomePageDataEvent.fetch());
                    getIt<ResumeWatcherBloc>()
                        .add(const ResumeWatcherEvent.getResumeData());
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

  Widget buildBody(BuildContext context, Key? key) {
    final kycCountryOriginImage = ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "KYC for Country of Origin",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            _OriginKycDocumentWidget(
              kycFront: _originKycDocFront,
              kycBack: _originKycDocBack,
              kycCallFront: (file) {
                setState(() {
                  _originKycDocFront = file;
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeOriginKycDocFront(file));
                });
              },
              kycCallBack: (file) {
                setState(() {
                  _originKycDocBack = file;
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeOriginKycDocBack(file));
                });
              },
            ),
          ],
        ),
      ),
    );
    final kycCountryOriginDesc =
        BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
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
                    "KYC for Country of Origin",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Type",
                  child: CustomDropDownWidget(
                    hintText: "Document Type",
                    value: state.originKycDocType,
                    options: state.listOfKycDocType,
                    onChanged: (value) => context
                        .read<UpdateProfileBloc>()
                        .add(UpdateProfileEvent.changeOriginKycDocType(value)),
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "${state.originKycDocType} Number",
                  child: InputTextWidget(
                    hintText: "${state.originKycDocType} Number",
                    value: state.originKycDocNumber,
                    onChanged: (value) => context.read<UpdateProfileBloc>().add(
                        UpdateProfileEvent.changeOriginKycDocNumber(value)),
                  ),
                ),
                const SizedBox(height: 10),
                // TextWidetWithLabelAndChild(
                //   title: "Document Issued From",
                //   child: InputTextWidget(
                //     hintText: "Document Issued From",
                //     textInputType: TextInputType.name,
                //     value: state.originDocIssuedFrom,
                //     onChanged: (value) => context
                //         .read<UpdateProfileBloc>()
                //         .add(UpdateProfileEvent.changeOriginDocIssuedFrom(
                //             value)),
                //   ),
                // ),
                // const SizedBox(height: 10),
                // InkWell(
                //   onTap: () {
                //     selectDate(
                //       context: context,
                //       futureDataAvailable: false,
                //       showAge: false,
                //       controller: TextEditingController(
                //           text: state.originDocIssuedDate),
                //       onChanged: (date, age) {
                //         context.read<UpdateProfileBloc>().add(
                //             UpdateProfileEvent.changeOriginDocIssuedDate(
                //                 date));
                //       },
                //     );
                //   },
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       Expanded(
                //         flex: 2,
                //         child: TextWidetWithLabelAndChild(
                //           title: "Issued Date",
                //           child: InputTextWidget(
                //             hintText: "AD",
                //             textInputType: TextInputType.name,
                //             value: "AD",
                //             isEnable: false,
                //             onChanged: (value) {},
                //           ),
                //         ),
                //       ),
                //       const SizedBox(width: 5),
                //       Expanded(
                //         flex: 2,
                //         child: TextWidetWithLabelAndChild(
                //           key: UniqueKey(),
                //           title: "Year",
                //           child: InputTextWidget(
                //             hintText: "1195",
                //             textInputType: TextInputType.name,
                //             value: state.originDocIssuedYear,
                //             isEnable: false,
                //             onChanged: (value) {},
                //           ),
                //         ),
                //       ),
                //       const SizedBox(width: 5),
                //       Expanded(
                //         child: TextWidetWithLabelAndChild(
                //           key: UniqueKey(),
                //           title: "Month",
                //           child: InputTextWidget(
                //             hintText: "Jan",
                //             textInputType: TextInputType.name,
                //             value: state.originDocIssuedMonth,
                //             isEnable: false,
                //             onChanged: (value) {},
                //           ),
                //         ),
                //       ),
                //       const SizedBox(width: 5),
                //       Expanded(
                //         child: TextWidetWithLabelAndChild(
                //           key: UniqueKey(),
                //           title: "Days",
                //           child: InputTextWidget(
                //             hintText: "31",
                //             textInputType: TextInputType.name,
                //             value: state.originDocIssuedDay,
                //             isEnable: false,
                //             onChanged: (value) {},
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
    final kycForJPImg = ShadowBoxWidget(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "KYC For Japan",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 10),
            _ResidenceKycDocumentWidget(
              kycFront: _residenceKycDocFront,
              kycBack: _residenceKycDocBack,
              kycCallFront: (file) {
                setState(() {
                  _residenceKycDocFront = file;
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeResidenceKycDocFront(file));
                });
              },
              kycCallBack: (file) {
                setState(() {
                  _residenceKycDocBack = file;
                  context
                      .read<UpdateProfileBloc>()
                      .add(UpdateProfileEvent.changeResidenceKycDocBack(file));
                });
              },
            ),
          ],
        ),
      ),
    );
    final kycForJapanDesc = BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
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
                    "KYC For Japan",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "Document Type",
                  child: CustomDropDownWidget(
                    hintText: "Document Type",
                    value: state.residenceKycDocType,
                    options: const [
                      "Japan Residence Card",
                      "Japan Driving License"
                    ],
                    onChanged: (value) => context.read<UpdateProfileBloc>().add(
                        UpdateProfileEvent.changeResidenceKycDocType(value)),
                  ),
                ),
                const SizedBox(height: 10),
                TextWidetWithLabelAndChild(
                  title: "${state.residenceKycDocType} Number",
                  child: InputTextWidget(
                    hintText: "${state.residenceKycDocType} Number",
                    value: state.residenceKycDocNumber,
                    onChanged: (value) => context.read<UpdateProfileBloc>().add(
                        UpdateProfileEvent.changeResidenceKycDocNumber(value)),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );

    var widgets = <Widget>[];

    final reqLocation =
        getIt<HomePageDataBloc>().homeData?.userDetail?.requestLocation ?? 'JP';
    final isJapan = reqLocation.toUpperCase() == 'JP';

    if (isJapan) {
      widgets = [
        kycForJapanDesc,
        const SizedBox(height: 16),
        kycForJPImg,
        const SizedBox(height: 16),
        kycCountryOriginDesc,
        const SizedBox(height: 16),
        kycCountryOriginImage,
      ];
    } else {
      widgets = [
        kycCountryOriginDesc,
        const SizedBox(height: 16),
        kycCountryOriginImage,
        const SizedBox(height: 16),
        kycForJapanDesc,
        const SizedBox(height: 16),
        kycForJPImg,
        const SizedBox(height: 16),
      ];
    }
    final isVerified =
        getIt<HomePageDataBloc>().homeData?.userDetail?.isKycVerified ?? false;

    return Column(
      key: key,
      children: [
        const SizedBox(height: 16),
        AbsorbPointer(
          absorbing: isVerified,
          child: Column(
            children: widgets,
          ),
        ),
        const SizedBox(height: 8),
        InkWell(
          onTap: isVerified
              ? null
              : () {
                  AnalyticsService.logEvent(FirebaseEvents.PROFILE_UPDATE);

                  context
                      .read<UpdateProfileBloc>()
                      .add(const UpdateProfileEvent.saveDocumentInfo());
                },
          child: Container(
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
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _OriginKycDocumentWidget extends StatelessWidget {
  final File? kycFront;
  final File? kycBack;
  final Function(File) kycCallFront;
  final Function(File) kycCallBack;

  final FileProvider fileProvider = getIt<FileProvider>();

  _OriginKycDocumentWidget({
    Key? key,
    required this.kycFront,
    required this.kycBack,
    required this.kycCallFront,
    required this.kycCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseURL = getIt<ConfigReader>().baseURL;
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      try {
                        final fileProviderResult =
                            await fileProvider.getImage(freeCrop: true);
                        fileProviderResult.fold(
                          (message) {
                            if (message.isNotEmpty) {
                              FlushbarHelper.createError(message: message)
                                  .show(context);
                            }
                          },
                          (file) {
                            kycCallFront(file);
                          },
                        );
                      } catch (ex) {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => PermissionNotAvailableWidget(
                            onPressed: () async {
                              context.popRoute();

                              await openAppSettings();
                            },
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Palette.primaryBackground.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: kycFront == null
                          ? ImageLoaderWidget(
                              image: state.originKycDocFront.isEmpty
                                  ? ""
                                  : "$baseURL${state.originKycDocFront}",
                              height: 100,
                              width: 80,
                              cornerRadius: 10,
                              isPlaceHolderSvg: true,
                              placeholderImage: "assets/images/profile/doc.svg",
                            )
                          : SizedBox(
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: kycFront == null
                                    ? const SizedBox.expand()
                                    : Image.file(
                                        kycFront!,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      try {
                        final fileProviderResult =
                            await fileProvider.getImage(freeCrop: true);
                        // setState(() {
                        //   _isLoading = false;
                        // });
                        fileProviderResult.fold(
                          (message) {
                            if (message.isNotEmpty) {
                              FlushbarHelper.createError(message: message)
                                  .show(context);
                            }
                          },
                          (file) {
                            kycCallBack(file);
                          },
                        );
                      } catch (ex) {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => PermissionNotAvailableWidget(
                            onPressed: () async {
                              context.popRoute();

                              await openAppSettings();
                            },
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Palette.primaryBackground.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: kycBack == null
                          ? ImageLoaderWidget(
                              image: state.originKycDocBack.isEmpty
                                  ? ""
                                  : "$baseURL${state.originKycDocBack}",
                              height: 100,
                              width: 80,
                              cornerRadius: 10,
                              isPlaceHolderSvg: true,
                              placeholderImage: "assets/images/profile/doc.svg",
                            )
                          : SizedBox(
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: kycBack == null
                                    ? const SizedBox.expand()
                                    : Image.file(
                                        kycBack!,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                    child: Text(
                  "Front",
                  textAlign: TextAlign.center,
                )),
                Expanded(
                    child: Text(
                  "Back",
                  textAlign: TextAlign.center,
                )),
              ],
            ),
          ],
        );
      },
    );
  }
}

class _ResidenceKycDocumentWidget extends StatelessWidget {
  final File? kycFront;
  final File? kycBack;
  final Function(File) kycCallFront;
  final Function(File) kycCallBack;

  final FileProvider fileProvider = getIt<FileProvider>();

  _ResidenceKycDocumentWidget({
    Key? key,
    required this.kycFront,
    required this.kycBack,
    required this.kycCallFront,
    required this.kycCallBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseURL = getIt<ConfigReader>().baseURL;
    return BlocBuilder<UpdateProfileBloc, UpdateProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      try {
                        final fileProviderResult =
                            await fileProvider.getImage(freeCrop: true);
                        fileProviderResult.fold(
                          (message) {
                            if (message.isNotEmpty) {
                              FlushbarHelper.createError(message: message)
                                  .show(context);
                            }
                          },
                          (file) {
                            kycCallFront(file);
                          },
                        );
                      } catch (ex) {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => PermissionNotAvailableWidget(
                            onPressed: () async {
                              context.popRoute();

                              await openAppSettings();
                            },
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Palette.primaryBackground.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: kycFront == null
                          ? ImageLoaderWidget(
                              image: state.residenceKycDocFront.isEmpty
                                  ? ""
                                  : "$baseURL${state.residenceKycDocFront}",
                              height: 100,
                              width: 80,
                              cornerRadius: 10,
                              isPlaceHolderSvg: true,
                              placeholderImage: "assets/images/profile/doc.svg",
                            )
                          : SizedBox(
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: kycFront == null
                                    ? const SizedBox.expand()
                                    : Image.file(
                                        kycFront!,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () async {
                      try {
                        final fileProviderResult =
                            await fileProvider.getImage(freeCrop: true);
                        // setState(() {
                        //   _isLoading = false;
                        // });
                        fileProviderResult.fold(
                          (message) {
                            if (message.isNotEmpty) {
                              FlushbarHelper.createError(message: message)
                                  .show(context);
                            }
                          },
                          (file) {
                            kycCallBack(file);
                          },
                        );
                      } catch (ex) {
                        showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (_) => PermissionNotAvailableWidget(
                            onPressed: () async {
                              context.popRoute();

                              await openAppSettings();
                            },
                          ),
                        );
                      }
                    },
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: Palette.primaryBackground.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: kycBack == null
                          ? ImageLoaderWidget(
                              image: state.residenceKycDocBack.isEmpty
                                  ? ""
                                  : "$baseURL${state.residenceKycDocBack}",
                              height: 100,
                              width: 80,
                              cornerRadius: 10,
                              isPlaceHolderSvg: true,
                              placeholderImage: "assets/images/profile/doc.svg",
                            )
                          : SizedBox(
                              height: 100,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: kycBack == null
                                    ? const SizedBox.expand()
                                    : Image.file(
                                        kycBack!,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Expanded(
                    child: Text(
                  "Front",
                  textAlign: TextAlign.center,
                )),
                Expanded(
                    child: Text(
                  "Back",
                  textAlign: TextAlign.center,
                )),
              ],
            ),
          ],
        );
      },
    );
  }
}
