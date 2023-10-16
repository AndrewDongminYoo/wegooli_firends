// ignore_for_file: must_be_immutable

part of 'unsubscribe_confirm_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// UnsubscribeConfirm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UnsubscribeConfirmEvent extends Equatable {}

/// Event that is dispatched when the UnsubscribeConfirm widget is first created.
class UnsubscribeConfirmInitialEvent extends UnsubscribeConfirmEvent {
  @override
  List<Object?> get props => [];
}
