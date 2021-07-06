import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'khalti_form_state.dart';
part 'khalti_form_cubit.freezed.dart';

@injectable
class KhaltiFormCubit extends Cubit<KhaltiFormState> {
  KhaltiFormCubit() : super(KhaltiFormState.initial());
  void updateAmountFromForm(String amount) {
    emit(state.copyWith(amount: amount));
  }

  void updateAmountFromMenu(String amount) {
    emit(state.copyWith(
      key: UniqueKey(),
      amount: amount,
    ));
  }

  void setPurpose(String purpose) {
    emit(state.copyWith(purpose: purpose));
  }
}
