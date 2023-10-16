// ignore_for_file: must_be_immutable

part of 'k109_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// K109 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K109Event extends Equatable {}

/// Event that is dispatched when the K109 widget is first created.
class K109InitialEvent extends K109Event {
  @override
  List<Object?> get props => [];
}
