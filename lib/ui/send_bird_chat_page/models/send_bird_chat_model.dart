// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [send_bird_chat_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SendBirdChatModel extends Equatable {
  SendBirdChatModel();

  SendBirdChatModel copyWith() {
    return SendBirdChatModel();
  }

  @override
  List<Object?> get props => [];
}
