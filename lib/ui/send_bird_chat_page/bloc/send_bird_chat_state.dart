// ignore_for_file: must_be_immutable

part of 'send_bird_chat_bloc.dart';

/// Represents the state of SendBirdChat in the application.
class SendBirdChatState extends Equatable {
  SendBirdChatState({
    this.chatinputoneController,
    this.sendBirdChatModelObj,
  });

  TextEditingController? chatinputoneController;

  SendBirdChatModel? sendBirdChatModelObj;

  @override
  List<Object?> get props => [
        chatinputoneController,
        sendBirdChatModelObj,
      ];
  SendBirdChatState copyWith({
    TextEditingController? chatinputoneController,
    SendBirdChatModel? sendBirdChatModelObj,
  }) {
    return SendBirdChatState(
      chatinputoneController:
          chatinputoneController ?? this.chatinputoneController,
      sendBirdChatModelObj: sendBirdChatModelObj ?? this.sendBirdChatModelObj,
    );
  }
}
