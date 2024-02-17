import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/all_requests_screen/models/all_requests_model.dart';
part 'all_requests_event.dart';
part 'all_requests_state.dart';

/// A bloc that manages the state of a AllRequests according to the event that is dispatched to it.
class AllRequestsBloc extends Bloc<AllRequestsEvent, AllRequestsState> {
  AllRequestsBloc(AllRequestsState initialState) : super(initialState) {
    on<AllRequestsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AllRequestsInitialEvent event,
    Emitter<AllRequestsState> emit,
  ) async {
    emit(state.copyWith(
      swiftVillageController: TextEditingController(),
      kobeTrafficwayController: TextEditingController(),
      soedadPortsController: TextEditingController(),
    ));
  }
}
