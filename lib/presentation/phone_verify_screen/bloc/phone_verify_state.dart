// ignore_for_file: must_be_immutable

part of 'phone_verify_bloc.dart';

/// Represents the state of PhoneVerify in the application.
class PhoneVerifyState extends Equatable {
  PhoneVerifyState({
    this.otpController,
    this.phoneVerifyModelObj,
  });

  TextEditingController? otpController;

  PhoneVerifyModel? phoneVerifyModelObj;

  @override
  List<Object?> get props => [
        otpController,
        phoneVerifyModelObj,
      ];
  PhoneVerifyState copyWith({
    TextEditingController? otpController,
    PhoneVerifyModel? phoneVerifyModelObj,
  }) {
    return PhoneVerifyState(
      otpController: otpController ?? this.otpController,
      phoneVerifyModelObj: phoneVerifyModelObj ?? this.phoneVerifyModelObj,
    );
  }
}
