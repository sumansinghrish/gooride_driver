import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gooridedriver/presentation/message_screen/models/message_model.dart';
part 'message_event.dart';
part 'message_state.dart';

/// A bloc that manages the state of a Message according to the event that is dispatched to it.
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc(MessageState initialState) : super(initialState) {
    on<MessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageInitialEvent event,
    Emitter<MessageState> emit,
  ) async {
    emit(state.copyWith(
      messageController: TextEditingController(),
    ));
  }
}
