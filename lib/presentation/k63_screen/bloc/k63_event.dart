// ignore_for_file: must_be_immutable

part of 'k63_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K63 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K63Event extends Equatable {}

/// Event that is dispatched when the K63 widget is first created.
class K63InitialEvent extends K63Event {
  @override
  List<Object?> get props => [];
}
