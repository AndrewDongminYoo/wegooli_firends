// ignore_for_file: must_be_immutable

part of 'k84_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K84 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K84Event extends Equatable {}

/// Event that is dispatched when the K84 widget is first created.
class K84InitialEvent extends K84Event {
  @override
  List<Object?> get props => [];
}
