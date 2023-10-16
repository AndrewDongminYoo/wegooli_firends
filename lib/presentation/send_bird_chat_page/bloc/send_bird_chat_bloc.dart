import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_app/core/app_export.dart';
import 'package:wegooli_friends_app/presentation/send_bird_chat_page/models/send_bird_chat_model.dart';
part 'send_bird_chat_event.dart';
part 'send_bird_chat_state.dart';

/// A bloc that manages the state of a SendBirdChat according to the event that is dispatched to it.
class SendBirdChatBloc extends Bloc<SendBirdChatEvent, SendBirdChatState> {
  SendBirdChatBloc(SendBirdChatState initialState) : super(initialState) {
    on<SendBirdChatInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
    SendBirdChatInitialEvent event,
    Emitter<SendBirdChatState> emit,
  ) async {
    emit(state.copyWith(
      chatinputoneController: TextEditingController(),
    ));
  }
}
