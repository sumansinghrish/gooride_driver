import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/invite_friends_screen/models/invite_friends_model.dart';
part 'invite_friends_event.dart';
part 'invite_friends_state.dart';

/// A bloc that manages the state of a InviteFriends according to the event that is dispatched to it.
class InviteFriendsBloc extends Bloc<InviteFriendsEvent, InviteFriendsState> {
  InviteFriendsBloc(InviteFriendsState initialState) : super(initialState) {
    on<InviteFriendsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InviteFriendsInitialEvent event,
    Emitter<InviteFriendsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
  }
}
