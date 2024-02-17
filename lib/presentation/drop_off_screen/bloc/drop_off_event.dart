// ignore_for_file: must_be_immutable

part of 'drop_off_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DropOff widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DropOffEvent extends Equatable {}

/// Event that is dispatched when the DropOff widget is first created.
class DropOffInitialEvent extends DropOffEvent {
  @override
  List<Object?> get props => [];
}
