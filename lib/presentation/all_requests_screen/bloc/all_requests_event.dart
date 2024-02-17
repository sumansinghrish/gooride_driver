// ignore_for_file: must_be_immutable

part of 'all_requests_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AllRequests widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AllRequestsEvent extends Equatable {}

/// Event that is dispatched when the AllRequests widget is first created.
class AllRequestsInitialEvent extends AllRequestsEvent {
  @override
  List<Object?> get props => [];
}
