// ignore_for_file: must_be_immutable

part of 'one3_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///One3 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class One3Event extends Equatable {}

/// Event that is dispatched when the One3 widget is first created.
class One3InitialEvent extends One3Event {
  @override
  List<Object?> get props => [];
}
