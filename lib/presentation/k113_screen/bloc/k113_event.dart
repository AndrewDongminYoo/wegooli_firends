// ignore_for_file: must_be_immutable

part of 'k113_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K113 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K113Event extends Equatable {}

/// Event that is dispatched when the K113 widget is first created.
class K113InitialEvent extends K113Event {
  @override
  List<Object?> get props => [];
}
