// ignore_for_file: must_be_immutable

part of 'setup_gps_locations_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SetupGpsLocations widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SetupGpsLocationsEvent extends Equatable {}

/// Event that is dispatched when the SetupGpsLocations widget is first created.
class SetupGpsLocationsInitialEvent extends SetupGpsLocationsEvent {
  @override
  List<Object?> get props => [];
}
