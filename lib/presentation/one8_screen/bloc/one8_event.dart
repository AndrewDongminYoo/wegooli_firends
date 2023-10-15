// ignore_for_file: must_be_immutable

part of 'one8_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///One8 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One8Event extends Equatable {}

/// Event that is dispatched when the One8 widget is first created.
class One8InitialEvent extends One8Event {
  @override
  List<Object?> get props => [];
}
