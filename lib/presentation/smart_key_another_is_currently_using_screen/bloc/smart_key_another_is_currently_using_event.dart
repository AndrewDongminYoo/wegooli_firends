// ignore_for_file: must_be_immutable

part of 'smart_key_another_is_currently_using_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SmartKeyAnotherIsCurrentlyUsing widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SmartKeyAnotherIsCurrentlyUsingEvent extends Equatable {}

/// Event that is dispatched when the SmartKeyAnotherIsCurrentlyUsing widget is first created.
class SmartKeyAnotherIsCurrentlyUsingInitialEvent
    extends SmartKeyAnotherIsCurrentlyUsingEvent {
  @override
  List<Object?> get props => [];
}
