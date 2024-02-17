// ignore_for_file: must_be_immutable

part of 'otp_and_fare_bloc.dart';

/// Represents the state of OtpAndFare in the application.
class OtpAndFareState extends Equatable {
  OtpAndFareState({
    this.pickupLocationController,
    this.dropoffLocationController,
    this.otpAndFareModelObj,
  });

  TextEditingController? pickupLocationController;

  TextEditingController? dropoffLocationController;

  OtpAndFareModel? otpAndFareModelObj;

  @override
  List<Object?> get props => [
        pickupLocationController,
        dropoffLocationController,
        otpAndFareModelObj,
      ];
  OtpAndFareState copyWith({
    TextEditingController? pickupLocationController,
    TextEditingController? dropoffLocationController,
    OtpAndFareModel? otpAndFareModelObj,
  }) {
    return OtpAndFareState(
      pickupLocationController:
          pickupLocationController ?? this.pickupLocationController,
      dropoffLocationController:
          dropoffLocationController ?? this.dropoffLocationController,
      otpAndFareModelObj: otpAndFareModelObj ?? this.otpAndFareModelObj,
    );
  }
}
