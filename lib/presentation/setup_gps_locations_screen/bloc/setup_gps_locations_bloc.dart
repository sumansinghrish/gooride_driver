import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/setup_gps_locations_screen/models/setup_gps_locations_model.dart';
part 'setup_gps_locations_event.dart';
part 'setup_gps_locations_state.dart';

/// A bloc that manages the state of a SetupGpsLocations according to the event that is dispatched to it.
class SetupGpsLocationsBloc
    extends Bloc<SetupGpsLocationsEvent, SetupGpsLocationsState> {
  SetupGpsLocationsBloc(SetupGpsLocationsState initialState)
      : super(initialState) {
    on<SetupGpsLocationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SetupGpsLocationsInitialEvent event,
    Emitter<SetupGpsLocationsState> emit,
  ) async {}
}
