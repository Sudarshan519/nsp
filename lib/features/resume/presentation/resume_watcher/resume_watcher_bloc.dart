import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/entities/user_detail.dart';
import 'package:wallet_app/features/resume/data/app_constant/constant.dart';
import 'package:wallet_app/features/resume/domain/entities/academic_history.dart';
import 'package:wallet_app/features/resume/domain/entities/personal_info.dart';
import 'package:wallet_app/features/resume/domain/entities/qualification_history.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_data.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_model.dart';
import 'package:wallet_app/features/resume/domain/entities/resume_options.dart';
import 'package:wallet_app/features/resume/domain/entities/work_history.dart';
import 'package:wallet_app/features/resume/domain/usecases/delete_resume_data.dart';
import 'package:wallet_app/features/resume/domain/usecases/get_resume.dart';

part 'resume_watcher_event.dart';
part 'resume_watcher_state.dart';
part 'resume_watcher_bloc.freezed.dart';

@lazySingleton
class ResumeWatcherBloc extends Bloc<ResumeWatcherEvent, ResumeWatcherState> {
  final GetResume getResume;
  final DeleteResumeData deleteResumeData;

  UserDetail? _userDetails;

  ResumeData? _english;
  ResumeData? _japanese;

  AddressesJp? _addressesJp;
  AddressesNp? _addressesNp;

  ResumeWatcherBloc({
    required this.getResume,
    required this.deleteResumeData,
  }) : super(ResumeWatcherState.initial());

  @override
  Stream<ResumeWatcherState> mapEventToState(
    ResumeWatcherEvent event,
  ) async* {
    yield* event.map(
      deleteResumeData: (e) async* {
        yield state.copyWith(
          isLoading: true,
        );
        final result = await deleteResumeData(e.params);
        yield result.fold((fail) {
          return state.copyWith(
            isLoading: false,
            failureOrSuccessOption: optionOf(fail),
          );
        }, (success) {
          final toModify = (state.language == "en") ? _english : _japanese;

          switch (e.params.type) {
            case ResumeType.education:
              toModify?.academicHistory
                  ?.removeWhere((element) => element.id == e.params.id);
              break;
            case ResumeType.experience:
              toModify?.workHistory
                  ?.removeWhere((element) => element.id == e.params.id);
              break;
            case ResumeType.qualification:
              toModify?.qualificationHistory
                  ?.removeWhere((element) => element.id == e.params.id);
              break;
          }
          return state.copyWith(
            isLoading: false,
            academics: toModify?.academicHistory ?? state.academics,
            qualifications:
                toModify?.qualificationHistory ?? state.qualifications,
            works: toModify?.workHistory ?? state.works,
            failureOrSuccessOption: none(),
          );
        });
      },
      getResumeData: (e) async* {
        yield state.copyWith(
          isLoading: false,
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
            _userDetails = resume.userDetail;
            if (resume.resumeData?.status == false) {
              _english = ResumeData(
                personalInfo: PersonalInfo(
                  firstName: _userDetails?.firstName,
                  lastName: _userDetails?.lastName,
                  email: _userDetails?.email,
                ),
                options: resume.resumeData?.data?.en?.options,
              );
              _japanese = ResumeData(
                personalInfo: PersonalInfo(
                  firstName: _userDetails?.firstName,
                  lastName: _userDetails?.lastName,
                  email: _userDetails?.email,
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

          final _personalInfo = _english?.personalInfo ?? PersonalInfo();
          if (_personalInfo.email == null || _personalInfo.email!.isEmpty) {
            _personalInfo.email = _userDetails?.email ?? '';
          }

          if (_personalInfo.firstName == null ||
              _personalInfo.firstName!.isEmpty) {
            _personalInfo.firstName = _userDetails?.firstName ?? '';
          }

          if (_personalInfo.lastName == null ||
              _personalInfo.lastName!.isEmpty) {
            _personalInfo.lastName = _userDetails?.lastName ?? '';
          }

          yield state.copyWith(
            isLoading: false,
            info: _personalInfo,
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

          final _personalInfo = _japanese?.personalInfo ?? PersonalInfo();
          if (_personalInfo.email == null || _personalInfo.email!.isEmpty) {
            _personalInfo.email = _userDetails?.email ?? '';
          }

          if (_personalInfo.firstName == null ||
              _personalInfo.firstName!.isEmpty) {
            _personalInfo.firstName = _userDetails?.firstName ?? '';
          }

          if (_personalInfo.lastName == null ||
              _personalInfo.lastName!.isEmpty) {
            _personalInfo.lastName = _userDetails?.lastName ?? '';
          }

          yield state.copyWith(
            isLoading: false,
            info: _personalInfo,
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
