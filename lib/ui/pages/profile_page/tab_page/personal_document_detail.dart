import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallet_app/core/file_picker/file_provider.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/profile/update_profile/presentations/bloc/update_profile_bloc.dart';
import 'package:wallet_app/features/resume/presentation/resume_watcher/resume_watcher_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/pages/profile_page/widgets/text_widget_label_and_child.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:wallet_app/ui/widgets/image_loader_view.dart';
import 'package:wallet_app/ui/widgets/shodow_box.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_drop_down_widget.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/input_text_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/config_reader.dart';
import 'package:wallet_app/utils/constant.dart';

class PersonalDocumentDetailPage extends StatefulWidget {
  @override
  _PersonalDocumentDetailPageState createState() =>
      _PersonalDocumentDetailPageState();
}

class _PersonalDocumentDetailPageState
    extends State<PersonalDocumentDetailPage> {
  File? _userImage;
  File? _originKycDocFront;
  File? _originKycDocBack;
  File? _residenceKycDocFront;
  File? _residenceKycDocBack;

  @override
  void initState() {
    // TODO: implement initState
    _userImage = null;
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
    return Column(
      key: key,
      children: [
        if (_userImage == null)
          _UserPhotoWidget(
            callback: (file) {
              setState(() {
                _userImage = file;
              });
            },
          )
        else
          _userSelectedImage(),
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
                      context.read<UpdateProfileBloc>().add(
                          UpdateProfileEvent.changeOriginKycDocFront(file));
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
        ),
        const SizedBox(height: 16),
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
                            .add(UpdateProfileEvent.changeOriginKycDocType(
                                value)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextWidetWithLabelAndChild(
                      title: "${state.originKycDocType} Number",
                      child: InputTextWidget(
                        hintText: "Number",
                        value: state.originKycDocNumber,
                        onChanged: (value) => context
                            .read<UpdateProfileBloc>()
                            .add(UpdateProfileEvent.changeOriginKycDocNumber(
                                value)),
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
                      context.read<UpdateProfileBloc>().add(
                          UpdateProfileEvent.changeResidenceKycDocFront(file));
                    });
                  },
                  kycCallBack: (file) {
                    setState(() {
                      _residenceKycDocBack = file;
                      context.read<UpdateProfileBloc>().add(
                          UpdateProfileEvent.changeResidenceKycDocBack(file));
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),
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
                        onChanged: (value) => context
                            .read<UpdateProfileBloc>()
                            .add(UpdateProfileEvent.changeResidenceKycDocType(
                                value)),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextWidetWithLabelAndChild(
                      title: "${state.residenceKycDocType} Number",
                      child: InputTextWidget(
                        hintText: "Number",
                        value: state.residenceKycDocNumber,
                        onChanged: (value) => context
                            .read<UpdateProfileBloc>()
                            .add(UpdateProfileEvent.changeResidenceKycDocNumber(
                                value)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        const SizedBox(height: 16),
        InkWell(
          onTap: () {
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

  Widget _userSelectedImage() {
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
            Column(
              children: [
                // if (_isLoading)
                //   SizedBox(height: 82, child: loadingPage())
                // else
                SizedBox(
                  height: 80,
                  width: 80,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40.0),
                    child: _userImage == null
                        ? const SizedBox.expand()
                        : Image.file(
                            _userImage!,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        if (_userImage != null) {
                          context.read<UpdateProfileBloc>().add(
                                UpdateProfileEvent.saveUserImage(
                                  _userImage!,
                                ),
                              );
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 25,
                        decoration: BoxDecoration(
                          color: Palette.primaryButtonColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Palette.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        setState(() {
                          _userImage = null;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 25,
                        decoration: BoxDecoration(
                          color: Palette.white,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: const Center(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _UserPhotoWidget extends StatelessWidget {
  final FileProvider fileProvider = getIt<FileProvider>();
  final Function(File) callback;

  _UserPhotoWidget({
    Key? key,
    required this.callback,
  }) : super(key: key);

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
                InkWell(
                  onTap: () async {
                    final fileProviderResult = await fileProvider.getImage();
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
                        callback(file);
                      },
                    );
                  },
                  child: Column(
                    children: [
                      ImageLoaderWidget(
                        image: state.profilePicture,
                        height: 80,
                        width: 80,
                        cornerRadius: 40,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () async {
                          final fileProviderResult =
                              await fileProvider.getImage();

                          fileProviderResult.fold(
                            (message) {
                              if (message.isNotEmpty) {
                                FlushbarHelper.createError(message: message)
                                    .show(context);
                              }
                            },
                            (file) {
                              callback(file);
                            },
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 25,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Palette.primaryButtonColor,
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Center(
                            child: Text(
                              "Update",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Palette.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
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
                      final fileProviderResult = await fileProvider.getImage();
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
                      final fileProviderResult = await fileProvider.getImage();
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
                      final fileProviderResult = await fileProvider.getImage();
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
                      final fileProviderResult = await fileProvider.getImage();
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
