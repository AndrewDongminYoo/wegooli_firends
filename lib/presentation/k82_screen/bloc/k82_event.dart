// ignore_for_file: must_be_immutable

part of 'k82_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K82 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K82Event extends Equatable {}

/// Event that is dispatched when the K82 widget is first created.
class K82InitialEvent extends K82Event {
  @override
  List<Object?> get props => [];
}
