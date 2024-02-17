import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/otp_and_fare_screen/models/otp_and_fare_model.dart';
part 'otp_and_fare_event.dart';
part 'otp_and_fare_state.dart';

/// A bloc that manages the state of a OtpAndFare according to the event that is dispatched to it.
class OtpAndFareBloc extends Bloc<OtpAndFareEvent, OtpAndFareState> {
  OtpAndFareBloc(OtpAndFareState initialState) : super(initialState) {
    on<OtpAndFareInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OtpAndFareInitialEvent event,
    Emitter<OtpAndFareState> emit,
  ) async {
    emit(state.copyWith(
        pickupLocationController: TextEditingController(),
        dropoffLocationController: TextEditingController()));
  }
}
