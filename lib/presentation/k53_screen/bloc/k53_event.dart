// ignore_for_file: must_be_immutable

part of 'k53_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K53 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K53Event extends Equatable {}

/// Event that is dispatched when the K53 widget is first created.
class K53InitialEvent extends K53Event {
  @override
  List<Object?> get props => [];
}
