import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/drop_off_screen/models/drop_off_model.dart';
part 'drop_off_event.dart';
part 'drop_off_state.dart';

/// A bloc that manages the state of a DropOff according to the event that is dispatched to it.
class DropOffBloc extends Bloc<DropOffEvent, DropOffState> {
  DropOffBloc(DropOffState initialState) : super(initialState) {
    on<DropOffInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DropOffInitialEvent event,
    Emitter<DropOffState> emit,
  ) async {}
}
