import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/accept_requests_screen/models/accept_requests_model.dart';
part 'accept_requests_event.dart';
part 'accept_requests_state.dart';

/// A bloc that manages the state of a AcceptRequests according to the event that is dispatched to it.
class AcceptRequestsBloc
    extends Bloc<AcceptRequestsEvent, AcceptRequestsState> {
  AcceptRequestsBloc(AcceptRequestsState initialState) : super(initialState) {
    on<AcceptRequestsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AcceptRequestsInitialEvent event,
    Emitter<AcceptRequestsState> emit,
  ) async {
    emit(state.copyWith(
      pickupLocationController: TextEditingController(),
      pickupLocationThreeController: TextEditingController(),
      pickupLocationThreeController1: TextEditingController(),
    ));
  }
}
