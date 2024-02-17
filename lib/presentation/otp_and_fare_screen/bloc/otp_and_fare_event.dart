// ignore_for_file: must_be_immutable

part of 'otp_and_fare_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpAndFare widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpAndFareEvent extends Equatable {}

/// Event that is dispatched when the OtpAndFare widget is first created.
class OtpAndFareInitialEvent extends OtpAndFareEvent {
  @override
  List<Object?> get props => [];
}
