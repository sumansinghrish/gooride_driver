// ignore_for_file: must_be_immutable

part of 'message_bloc.dart';

/// Represents the state of Message in the application.
class MessageState extends Equatable {
  MessageState({
    this.messageController,
    this.messageModelObj,
  });

  TextEditingController? messageController;

  MessageModel? messageModelObj;

  @override
  List<Object?> get props => [
        messageController,
        messageModelObj,
      ];
  MessageState copyWith({
    TextEditingController? messageController,
    MessageModel? messageModelObj,
  }) {
    return MessageState(
      messageController: messageController ?? this.messageController,
      messageModelObj: messageModelObj ?? this.messageModelObj,
    );
  }
}
