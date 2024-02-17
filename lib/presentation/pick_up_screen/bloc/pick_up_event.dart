// ignore_for_file: must_be_immutable

part of 'pick_up_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PickUp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PickUpEvent extends Equatable {}

/// Event that is dispatched when the PickUp widget is first created.
class PickUpInitialEvent extends PickUpEvent {
  @override
  List<Object?> get props => [];
}
