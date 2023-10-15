// ignore_for_file: must_be_immutable

part of 'k93_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///K93 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class K93Event extends Equatable {}

/// Event that is dispatched when the K93 widget is first created.
class K93InitialEvent extends K93Event {
  @override
  List<Object?> get props => [];
}
