import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/phone_verify_screen/models/phone_verify_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'phone_verify_event.dart';
part 'phone_verify_state.dart';

/// A bloc that manages the state of a PhoneVerify according to the event that is dispatched to it.
class PhoneVerifyBloc extends Bloc<PhoneVerifyEvent, PhoneVerifyState>
    with CodeAutoFill {
  PhoneVerifyBloc(PhoneVerifyState initialState) : super(initialState) {
    on<PhoneVerifyInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<PhoneVerifyState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    PhoneVerifyInitialEvent event,
    Emitter<PhoneVerifyState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
