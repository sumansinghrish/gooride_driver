import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/pick_up_screen/models/pick_up_model.dart';
part 'pick_up_event.dart';
part 'pick_up_state.dart';

/// A bloc that manages the state of a PickUp according to the event that is dispatched to it.
class PickUpBloc extends Bloc<PickUpEvent, PickUpState> {
  PickUpBloc(PickUpState initialState) : super(initialState) {
    on<PickUpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PickUpInitialEvent event,
    Emitter<PickUpState> emit,
  ) async {}
}
