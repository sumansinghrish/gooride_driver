// ignore_for_file: must_be_immutable

part of 'my_history_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyHistory widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyHistoryEvent extends Equatable {}

/// Event that is dispatched when the MyHistory widget is first created.
class MyHistoryInitialEvent extends MyHistoryEvent {
  @override
  List<Object?> get props => [];
}
