import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/resume/domain/usecases/update_resume_image.dart';

part 'upload_resume_image_event.dart';
part 'upload_resume_image_state.dart';
part 'upload_resume_image_bloc.freezed.dart';

class UploadResumeImageBloc
    extends Bloc<UploadResumeImageEvent, UploadResumeImageState> {
  final UpdateResumeImage updateResumeImage;

  UploadResumeImageBloc({
    required this.updateResumeImage,
  }) : super(UploadResumeImageState.initial());

  @override
  Stream<UploadResumeImageState> mapEventToState(
    UploadResumeImageEvent event,
  ) async* {
    yield* event.map(
      updateProfileImage: (e) async* {
        Either<ApiFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          isSubmitting: true,
          failureOrSuccessOption: none(),
        );

        final imageFile = e.image;
        final encodedString = base64.encode(await imageFile.readAsBytes());

        failureOrSuccess = await updateResumeImage(UpdateResumeImageParams(
          image: "data:image/png;base64,$encodedString",
          lang: e.lang,
        ));

        yield state.copyWith(
          isSubmitting: false,
          failureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
