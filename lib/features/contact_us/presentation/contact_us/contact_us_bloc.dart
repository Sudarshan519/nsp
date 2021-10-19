import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wallet_app/core/failure/api_failure.dart';
import 'package:wallet_app/features/contact_us/domain/use_case/contact_us.dart';
import 'package:wallet_app/features/home/presentation/home_page_data/home_page_data_bloc.dart';
import 'package:wallet_app/injections/injection.dart';

part 'contact_us_event.dart';
part 'contact_us_state.dart';
part 'contact_us_bloc.freezed.dart';

@injectable
class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  final ContactUsUseCase contactUs;
  ContactUsBloc(this.contactUs) : super(ContactUsState.initial());

  @override
  Stream<ContactUsState> mapEventToState(
    ContactUsEvent event,
  ) async* {
    yield* event.map(
      setInital: (e) async* {
        final detail = getIt<HomePageDataBloc>().homeData?.userDetail;
        final name = '${detail?.firstName ?? ''} ${detail?.lastName ?? ''}';
        final email = detail?.email ?? '';

        yield state.copyWith(
          key: UniqueKey(),
          name: name,
          email: email,
        );
      },
      changeName: (e) async* {
        yield state.copyWith(
          name: e.name,
          failureOrSuccessOption: none(),
        );
      },
      changeEmail: (e) async* {
        yield state.copyWith(
          email: e.email,
          failureOrSuccessOption: none(),
        );
      },
      changeMessage: (e) async* {
        yield state.copyWith(
          message: e.message,
          failureOrSuccessOption: none(),
        );
      },
      contactUs: (e) async* {
        yield state.copyWith(isLoading: true);
        final result = await contactUs(ContactUsParams(
          name: state.name,
          email: state.email,
          message: state.message,
        ));

        yield result.fold(
          (fail) => state.copyWith(
            failureOrSuccessOption: optionOf(Left(fail)),
            isLoading: false,
          ),
          (success) => state.copyWith(
            name: '',
            email: '',
            message: '',
            key: UniqueKey(),
            isLoading: false,
            failureOrSuccessOption: optionOf(Right(success)),
          ),
        );
      },
    );
  }
}
