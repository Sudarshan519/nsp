import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_data.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_options.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/get_resume.dart';

part 'resume_watcher_event.dart';
part 'resume_watcher_state.dart';
part 'resume_watcher_bloc.freezed.dart';

@lazySingleton
class ResumeWatcherBloc extends Bloc<ResumeWatcherEvent, ResumeWatcherState> {
  final GetResume getResume;

  ResumeData? _english;
  ResumeData? _japanese;

  AddressesJp? _addressesJp;
  AddressesNp? _addressesNp;

  ResumeWatcherBloc({
    required this.getResume,
  }) : super(ResumeWatcherState.initial());

  @override
  Stream<ResumeWatcherState> mapEventToState(
    ResumeWatcherEvent event,
  ) async* {
    yield* event.map(
      getResumeData: (e) async* {
        yield state.copyWith(
          isLoading: true,
          failureOrSuccessOption: none(),
        );

        final result = await getResume(NoParams());

        yield result.fold(
          (failure) => state.copyWith(
            isLoading: false,
            failureOrSuccessOption: optionOf(failure),
          ),
          (resume) {
            final hasResume = resume.resumeData?.hasResume ?? false;
            if (resume.resumeData?.status == false) {
              final userDetails = resume.userDetail;
              _english = ResumeData(
                personalInfo: PersonalInfo(
                  firstName: userDetails?.firstName,
                  lastName: userDetails?.lastName,
                  email: userDetails?.email,
                ),
                options: resume.resumeData?.data?.en?.options,
              );
              _japanese = ResumeData(
                personalInfo: PersonalInfo(
                  firstName: userDetails?.firstName,
                  lastName: userDetails?.lastName,
                  email: userDetails?.email,
                ),
                options: resume.resumeData?.data?.jp?.options,
              );
            } else {
              _english = resume.resumeData?.data?.en;
              _japanese = resume.resumeData?.data?.jp;
            }

            _addressesJp = resume.addressesJp;
            _addressesNp = resume.addressesNp;

            add(const _SetResumeData());
            return state.copyWith(
              isLoading: false,
              hasResume: hasResume,
              failureOrSuccessOption: none(),
            );
          },
        );
      },
      setResumeData: (e) async* {
        yield state.copyWith(
          isLoading: true,
          failureOrSuccessOption: none(),
        );
        if (state.language == "en") {
          final prefectures = _addressesJp?.en?.prefectures;
          final provinces = _addressesNp?.en?.province
                  ?.map((p) => p.provinceName ?? '')
                  .toList() ??
              [];

          yield state.copyWith(
            isLoading: false,
            info: _english?.personalInfo ?? const PersonalInfo(),
            academics: _english?.academicHistory ?? [],
            works: _english?.workHistory ?? [],
            qualifications: _english?.qualificationHistory ?? [],
            options: _english?.options ?? const ResumeOptions(),
            prefectures: prefectures ?? [],
            provinces: provinces,
            failureOrSuccessOption: none(),
          );
        } else {
          final prefectures = _addressesJp?.jp?.prefectures;
          final provinces = _addressesNp?.jp?.province
                  ?.map((p) => p.provinceName ?? '')
                  .toList() ??
              [];
          yield state.copyWith(
            isLoading: false,
            info: _japanese?.personalInfo ?? const PersonalInfo(),
            academics: _japanese?.academicHistory ?? [],
            works: _japanese?.workHistory ?? [],
            qualifications: _japanese?.qualificationHistory ?? [],
            options: _japanese?.options ?? const ResumeOptions(),
            prefectures: prefectures ?? [],
            provinces: provinces,
            failureOrSuccessOption: none(),
          );
        }
      },
      changeLanguage: (e) async* {
        yield state.copyWith(
          language: e.language,
        );
        add(const _SetResumeData());
      },
    );
  }
}
