// ignore_for_file: must_be_immutable

part of 'one1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///One1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One1Event extends Equatable {}

/// Event that is dispatched when the One1 widget is first created.
class One1InitialEvent extends One1Event {
  @override
  List<Object?> get props => [];
}
