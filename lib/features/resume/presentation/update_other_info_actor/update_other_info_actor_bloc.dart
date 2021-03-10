import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wallet_app/core/failure/api_failure.dart';

part 'update_other_info_actor_event.dart';
part 'update_other_info_actor_state.dart';
part 'update_other_info_actor_bloc.freezed.dart';

class UpdateOtherInfoActorBloc
    extends Bloc<UpdateOtherInfoActorEvent, UpdateOtherInfoActorState> {
  UpdateOtherInfoActorBloc() : super(_Initial());

  @override
  Stream<UpdateOtherInfoActorState> mapEventToState(
    UpdateOtherInfoActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
