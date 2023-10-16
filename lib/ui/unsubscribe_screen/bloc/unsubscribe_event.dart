// ignore_for_file: must_be_immutable

part of 'unsubscribe_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// Unsubscribe widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UnsubscribeEvent extends Equatable {}

/// Event that is dispatched when the Unsubscribe widget is first created.
class UnsubscribeInitialEvent extends UnsubscribeEvent {
  @override
  List<Object?> get props => [];
}
