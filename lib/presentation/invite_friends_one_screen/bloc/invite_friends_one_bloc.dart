import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/invite_friends_one_screen/models/invite_friends_one_model.dart';
part 'invite_friends_one_event.dart';
part 'invite_friends_one_state.dart';

/// A bloc that manages the state of a InviteFriendsOne according to the event that is dispatched to it.
class InviteFriendsOneBloc
    extends Bloc<InviteFriendsOneEvent, InviteFriendsOneState> {
  InviteFriendsOneBloc(InviteFriendsOneState initialState)
      : super(initialState) {
    on<InviteFriendsOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    InviteFriendsOneInitialEvent event,
    Emitter<InviteFriendsOneState> emit,
  ) async {
    emit(state.copyWith(weightController: TextEditingController()));
  }
}
