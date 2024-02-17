// ignore_for_file: must_be_immutable

part of 'phone_verify_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PhoneVerify widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PhoneVerifyEvent extends Equatable {}

/// Event that is dispatched when the PhoneVerify widget is first created.
class PhoneVerifyInitialEvent extends PhoneVerifyEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends PhoneVerifyEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
