import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet_app/core/file_picker/file_provider.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_resume_image.dart';
import 'package:wallet_app/features/resume/presentation/upload_resume_image/upload_resume_image_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/textFieldWidgets/custom_switch_widget.dart';
import 'package:wallet_app/ui/widgets/widgets.dart';
import 'package:wallet_app/utils/constant.dart';

class ResumeHeaderWidget extends StatefulWidget {
  @override
  _ResumeHeaderWidgetState createState() => _ResumeHeaderWidgetState();
}

class _ResumeHeaderWidgetState extends State<ResumeHeaderWidget> {
  File _selectedImage;
  bool _isLoading;
  UploadResumeImageBloc _uploadResumeImageBloc;

  @override
  void initState() {
    super.initState();
    _isLoading = false;
    _selectedImage = null;
    _uploadResumeImageBloc =
        UploadResumeImageBloc(updateResumeImage: getIt<UpdateResumeImage>());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _uploadResumeImageBloc,
      child: BlocBuilder<HomePageDataBloc, HomePageDataState>(
        buildWhen: (previous, next) => previous.hashCode != next.hashCode,
        builder: (context, state) {
          return state.map(
            initial: (_) => _resumeHeader(context, null),
            loading: (_) => _resumeHeader(context, null),
            loadingWithData: (success) =>
                _resumeHeader(context, success.data.userDetail),
            loaded: (success) =>
                _resumeHeader(context, success.data.userDetail),
            failure: (error) {
              FlushbarHelper.createError(
                message: error.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
              return _resumeHeader(context, null);
            },
            failureWithData: (failure) {
              FlushbarHelper.createError(
                message: failure.failure.map(
                  noInternetConnection: (error) => AppConstants.noNetwork,
                  serverError: (error) => error.message,
                  invalidUser: (error) => AppConstants.someThingWentWrong,
                ),
              ).show(context);
              return _resumeHeader(context, failure.data.userDetail);
            },
          );
        },
      ),
    );
  }

  Widget _resumeHeader(BuildContext context, UserDetail userDetail) {
    final FileProvider fileProvider = getIt<FileProvider>();

    return BlocConsumer<UploadResumeImageBloc, UploadResumeImageState>(
      listener: (context, state) {
        state.failureOrSuccessOption.fold(
          () => {},
          (failureOrSuccess) {
            failureOrSuccess.fold(
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
                _selectedImage = null;
                showDialog(
                  context: context,
                  builder: (_) => PopUpSuccessOverLay(
                    title: "Basic Info",
                    message: "Successfully updated.",
                    onPressed: () {
                      ExtendedNavigator.of(context).pop();
                    },
                  ),
                );
              },
            );
          },
        );
      },
      builder: (context, state) {
        if (state.isSubmitting) {
          return Container(
            color: Palette.primary,
            width: double.maxFinite,
            height: 200,
            child: Center(
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Palette.white),
                ),
              ),
            ),
          );
        }

        return Container(
          width: double.maxFinite,
          color: Palette.primary,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_selectedImage == null)
                InkWell(
                  onTap: () async {
                    setState(() {
                      _isLoading = true;
                    });
                    final fileProviderResult = await fileProvider.getImage();
                    setState(() {
                      _isLoading = false;
                    });
                    fileProviderResult.fold(
                      (message) {
                        if (message.isNotEmpty) {
                          FlushbarHelper.createError(message: message)
                              .show(context);
                        }
                      },
                      (file) {
                        setState(() {
                          _selectedImage = file;
                        });
                      },
                    );
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      const CircleAvatar(
                        radius: 41,
                        backgroundImage: AssetImage(
                          'assets/images/navigation_bar/u1.png',
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          height: 27,
                          width: 27,
                          padding: const EdgeInsets.all(7.0),
                          decoration: BoxDecoration(
                            color: Palette.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: SvgPicture.asset(
                            "assets/images/resume/edit.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              else
                Column(
                  children: [
                    if (_isLoading)
                      SizedBox(height: 82, child: loadingPage())
                    else
                      SizedBox(
                        height: 82,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(41.0),
                          child: Image.file(
                            _selectedImage,
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
                            context.read<UploadResumeImageBloc>().add(
                                UploadResumeImageEvent.updateProfileImage(
                                    _selectedImage));
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
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _selectedImage = null;
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
              const SizedBox(
                height: 10,
              ),
              Text(
                "${userDetail?.firstName ?? ""} ${userDetail?.lastName ?? ""}",
                style: TextStyle(
                  color: Palette.white,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/images/resume/flag-US.svg",
                    height: 20.0,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const CustomSwitch(),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    "assets/images/resume/flag-japan.svg",
                    height: 20.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        );
      },
    );
  }
}
