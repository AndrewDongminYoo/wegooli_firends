// ignore_for_file: must_be_immutable

part of 'smart_key_screen_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SmartKeyScreen widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SmartKeyScreenEvent extends Equatable {}

/// Event that is dispatched when the SmartKeyScreen widget is first created.
class SmartKeyScreenInitialEvent extends SmartKeyScreenEvent {
  @override
  List<Object?> get props => [];
}
