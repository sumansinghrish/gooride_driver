// ignore_for_file: must_be_immutable

part of 'accept_requests_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AcceptRequests widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AcceptRequestsEvent extends Equatable {}

/// Event that is dispatched when the AcceptRequests widget is first created.
class AcceptRequestsInitialEvent extends AcceptRequestsEvent {
  @override
  List<Object?> get props => [];
}
