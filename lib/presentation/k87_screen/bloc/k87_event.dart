// ignore_for_file: must_be_immutable

part of 'k87_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K87 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K87Event extends Equatable {}

/// Event that is dispatched when the K87 widget is first created.
class K87InitialEvent extends K87Event {
  @override
  List<Object?> get props => [];
}
