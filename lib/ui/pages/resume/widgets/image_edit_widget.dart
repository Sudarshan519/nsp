import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wallet_app/core/file_picker/file_provider.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_resume_image.dart';
import 'package:wallet_app/features/resume/presentation/upload_resume_image/upload_resume_image_bloc.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/ui/widgets/colors.dart';
import 'package:wallet_app/ui/widgets/loading_widget.dart';
import 'package:wallet_app/ui/widgets/pop_up/pop_up_permission_handler.dart';
import 'package:wallet_app/utils/constant.dart';

class ImageEditWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    File? _selectedImage;
    bool _isLoading = false;

    final FileProvider fileProvider = getIt<FileProvider>();
    final userDetail = context.read<HomePageDataBloc>().homeData?.userDetail;
    final _uploadResumeImageBloc =
        UploadResumeImageBloc(updateResumeImage: getIt<UpdateResumeImage>());
    return BlocProvider(
      create: (context) => _uploadResumeImageBloc,
      child: BlocConsumer<UploadResumeImageBloc, UploadResumeImageState>(
        buildWhen: (previous, next) => previous.hashCode != next.hashCode,
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
                  getIt<HomePageDataBloc>()
                      .add(const HomePageDataEvent.fetch());
                  _selectedImage = null;
                  FlushbarHelper.createSuccess(
                          message: 'Updated Image Successfully.')
                      .show(context);
                },
              );
            },
          );
        },
        builder: (context, state) {
          if (state.isSubmitting) {
            return Center(
              child: SizedBox(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Palette.white),
                ),
              ),
            );
          }

          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                width: double.maxFinite,
                color: Palette.primary,
                child: Column(
                  children: [
                    if (_selectedImage == null)
                      InkWell(
                        onTap: () async {
                          setState(() {
                            _isLoading = true;
                          });

                          try {
                            final fileProviderResult =
                                await fileProvider.getImage();
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
                          } catch (ex) {
                            setState(() {
                              _isLoading = false;
                            });
                            showDialog(
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
                        child: Stack(
                          alignment: Alignment.center,
                          clipBehavior: Clip.none,
                          children: [
                            _userImage(userDetail?.avatar ?? ""),
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
                              width: 82,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(41.0),
                                child: _selectedImage == null
                                    ? const SizedBox.expand()
                                    : Image.file(
                                        _selectedImage!,
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
                                  if (_selectedImage != null) {
                                    context.read<UploadResumeImageBloc>().add(
                                          UploadResumeImageEvent
                                              .updateProfileImage(
                                            _selectedImage!,
                                            "en",
                                          ),
                                        );
                                  }
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
              );
            },
          );
        },
      ),
    );
  }

  Widget _userImage(String image) {
    if (image.isEmpty) {
      return const CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(
          'assets/images/navigation_bar/u1.png',
        ),
      );
    }
    return SizedBox(
      width: 82,
      height: 82,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(41),
        child: Image.network(
          image,
          fit: BoxFit.cover,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null) return child;
            return Container(
              color: Palette.primaryBackground,
              height: 100,
              child: Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          (loadingProgress.expectedTotalBytes ?? 1)
                      : null,
                ),
              ),
            );
          },
          errorBuilder: (_, __, ___) {
            return Image.asset(
              'assets/images/navigation_bar/u1.png',
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
