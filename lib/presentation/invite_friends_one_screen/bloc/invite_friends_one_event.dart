// ignore_for_file: must_be_immutable

part of 'invite_friends_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InviteFriendsOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InviteFriendsOneEvent extends Equatable {}

/// Event that is dispatched when the InviteFriendsOne widget is first created.
class InviteFriendsOneInitialEvent extends InviteFriendsOneEvent {
  @override
  List<Object?> get props => [];
}
