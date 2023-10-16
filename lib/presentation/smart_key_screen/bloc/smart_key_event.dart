// ignore_for_file: must_be_immutable

part of 'smart_key_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// SmartKey widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SmartKeyEvent extends Equatable {}

/// Event that is dispatched when the SmartKey widget is first created.
class SmartKeyInitialEvent extends SmartKeyEvent {
  @override
  List<Object?> get props => [];
}
