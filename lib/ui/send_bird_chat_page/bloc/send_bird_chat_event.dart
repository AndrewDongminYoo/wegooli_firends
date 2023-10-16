// ignore_for_file: must_be_immutable

part of 'send_bird_chat_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SendBirdChat widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SendBirdChatEvent extends Equatable {}

/// Event that is dispatched when the SendBirdChat widget is first created.
class SendBirdChatInitialEvent extends SendBirdChatEvent {
  @override
  List<Object?> get props => [];
}
